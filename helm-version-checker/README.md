# Helm Chart Version Checker

This tool automatically checks for new Helm chart versions and creates GitHub issues for available updates.

##  Usage


### Standalone (Local Execution)

1.  **Install Dependencies**:

    ```bash
    pip install -r scripts/requirements.txt
    ```

2.  **Set Environment Variables**: The script requires two **environment variables** to function correctly.

      * `GITHUB_REPOSITORY`: The owner and repository name (e.g., `my-org/my-repo`).
      * `GITHUB_TOKEN`: A **Personal Access Token (PAT)** with permissions to read the repository and write issues. You can create one at `Settings > Developer settings > Personal access tokens`.

3.  **Run the Script**: Execute the script from the root of the repository.

    ```bash
    GITHUB_REPOSITORY="owner/repo" GITHUB_TOKEN="your_personal_access_token" python scripts/version_checker.py
    ```

-----

### Inside GitHub Actions

```yaml
name: Helm Chart Version Checker

on:
  workflow_dispatch:

  schedule:
    - cron: '0 0 1 * *'

jobs:
  check-versions:
    name: Check for new Helm chart versions
    runs-on: ubuntu-latest

    permissions:
      contents: read
      issues: write
    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Set up Python
        uses: actions/setup-python@v5
        with:
          python-version: '3.11'
          cache: 'pip'

      - name: Install dependencies
        run: pip install -r helm-version-checker/requirements.txt

      - name: Run version check script

        run: python helm-version-checker/version_checker.py
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```
