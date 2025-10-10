#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
This script checks for new versions of Helm charts defined in various values.yaml
files and creates GitHub issues if a new version is available.

Requirements:
- Python 3.6+
- requests: pip install requests
- PyYAML:   pip install pyyaml
"""

import os
import sys
import json
from pathlib import Path
import requests
import yaml

# --- Configuration ---
# GitHub repository in the format 'owner/repo'
REPO = os.getenv("GITHUB_REPOSITORY")
# GitHub token with permissions to read/write issues
GITHUB_TOKEN = os.getenv("GITHUB_TOKEN")
# Maintainers file path
MAINTAINERS_FILE = "MAINTAINERS.yaml"
# GitHub API URL
API_URL = "https://api.github.com"


def get_maintainers(file_path, app_group):
    """Loads maintainers from the YAML file for a specific app group."""
    try:
        with open(file_path, 'r') as f:
            maintainers_data = yaml.safe_load(f)
            assignees = maintainers_data.get(app_group, [])
            if not assignees:
                print(f"No specific maintainers found for '{app_group}'. Looking for 'default' maintainers.")
                assignees = maintainers_data.get('default', [])
            return assignees

    except FileNotFoundError:
        print(f"Error: Maintainers file not found at {file_path}", file=sys.stderr)
        return []
    except Exception as e:
        print(f"Error reading or parsing maintainers file: {e}", file=sys.stderr)
        return []

def get_latest_helm_version(repo_url, chart_name, repoPath):
    """Fetches the latest chart version from a Helm repository's index.yaml."""
    if not repo_url or repo_url == "null":
        print(f"Warning: Invalid or missing repoURL for chart '{chart_name}'. Skipping.", file=sys.stderr)
        return None

    index_url = f"{repo_url.rstrip('/')}/index.yaml"
    try:
        response = requests.get(index_url, timeout=10)
        response.raise_for_status()  # Raises an HTTPError for bad responses (4xx or 5xx)
        index_data = yaml.safe_load(response.content)
        # Extract the latest version
        latest_version = index_data['entries'][chart_name][0]['version']
        return latest_version
    except requests.exceptions.RequestException as e:
        print(f"Error: Failed to download index.yaml from {index_url}. Details: {e}", file=sys.stderr)
    except (KeyError, IndexError, TypeError) as e:
        print(f"Error: Could not parse version for chart '{chart_name}' from {index_url}. Details: {e}", file=sys.stderr)
    return None

def check_existing_issue(repo, token, title):
    """
    Checks if a GitHub issue with the exact same title already exists,
    handling pagination and providing debug output.
    """
    headers = {
        "Authorization": f"token {token}",
        "Accept": "application/vnd.github.v3+json",
    }
    params = {"state": "open", "per_page": 100}
    url = f"{API_URL}/repos/{repo}/issues"

    page_num = 1
    while url:
        try:
            response = requests.get(url, headers=headers, params=params, timeout=10)

            response.raise_for_status()

            issues = response.json()

            # Check each issue on the current page
            for issue in issues:
                if issue.get("title") == title:
                    return issue.get("number")

            if 'next' in response.links:
                url = response.links['next']['url']
                params = {}
                page_num += 1
            else:
                url = None

        except requests.exceptions.RequestException as e:
            error_details = e.response.text if e.response else str(e)
            print(f"Error checking for existing GitHub issues: {error_details}", file=sys.stderr)
            return None

    return None

def create_github_issue(repo, token, title, body, assignees):
    """Creates a new GitHub issue."""
    headers = {
        "Authorization": f"token {token}",
        "Accept": "application/vnd.github.v3+json",
    }
    payload = {
        "title": title,
        "body": body,
        "assignees": assignees
    }
    issues_url = f"{API_URL}/repos/{repo}/issues"
    try:
        response = requests.post(issues_url, headers=headers, data=json.dumps(payload), timeout=10)
        response.raise_for_status()
        print(f"Successfully created issue '{title}' and assigned to: {', '.join(assignees)}")
    except requests.exceptions.RequestException as e:
        print(f"Error creating GitHub issue '{title}': {e.response.text}", file=sys.stderr)


def main():
    """Main execution function."""
    if not REPO or not GITHUB_TOKEN:
        print("Error: GITHUB_REPOSITORY and GITHUB_TOKEN environment variables must be set.", file=sys.stderr)
        sys.exit(1)

    if not Path(MAINTAINERS_FILE).is_file():
        print(f"Error: {MAINTAINERS_FILE} not found in the repository root.", file=sys.stderr)
        sys.exit(1)

    print(f"Running on repository: {REPO}")

    values_files = list(Path("charts").glob("*apps/values.yaml"))
    if not values_files:
        print("No 'charts/*apps/values.yaml' files found. Exiting.")
        return

    for value_file in values_files:
        print(f"\n--- Processing file: {value_file} ---")
        app_group = value_file.parent.name

        try:
            with open(value_file, 'r') as f:
                apps_data = yaml.safe_load(f)
        except Exception as e:
            print(f"Error reading or parsing YAML file {value_file}: {e}", file=sys.stderr)
            continue

        if not apps_data:
            continue

        for name, details in apps_data.items():

            if not isinstance(details, dict):
                continue

            repo_url = details.get("repoURL")
            target_revision = str(details.get("targetRevision", "")) # Ensure it's a string
            chart = details.get("chart")
            repoPath = details.get("chart")


            latest_version = get_latest_helm_version(repo_url, chart, repoPath)

            if not latest_version:
                continue

            print("----------------------------------------")
            print(f"Checking: {name} (from {app_group})")
            print(f"  -> Your Version (targetRevision): {target_revision}")
            print(f"  -> Latest Version Available:      {latest_version}")
            print("----------------------------------------")

            # --- Version comparison and issue creation ---
            if latest_version != target_revision and latest_version and target_revision:
                title = f"New Version Available: {name} {latest_version}"

                existing_issue_number = check_existing_issue(REPO, GITHUB_TOKEN, title)

                if not existing_issue_number:
                    print(f"Found new version for {name}! Creating issue...")

                    assignees = get_maintainers(MAINTAINERS_FILE, app_group)

                    if assignees:
                        print(f"Found maintainers for '{app_group}': {', '.join(assignees)}")

                    body = (
                        f"New version available for **{name}**!\n\n"
                        f"Current `targetRevision` set: `{target_revision}`\n"
                        f"New version available: `{latest_version}`\n\n"
                        f"Please consider creating a PR to update the `targetRevision` in this file: "
                        f"[{value_file}](https://github.com/{REPO}/blob/main/{value_file})\n\n"
                        "Thanks."
                    )

                    create_github_issue(REPO, GITHUB_TOKEN, title, body, assignees)
                else:
                    print(f"Issue #{existing_issue_number} for '{title}' already exists. Skipping.")

    print("\nScript finished.")


if __name__ == "__main__":
    main()
