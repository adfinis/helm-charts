# Maintenance

To ensure regular updates to the helm charts, a python script is run once a month by a GitHub Action.
This tool automatically checks for new Helm chart versions and creates GitHub issues for available updates.
The issues are assigned to the people designated as maintainers in the `MAINTAINERS.yaml` file.

## Configure `MAINTAINERS.yaml` to assign issues

This file, located in your repository's root, maps chart groups to GitHub usernames. Keys must match the *apps names inside your `charts/` directory (e.g., `monitoring-apps`). Use `default` as a fallback.

Example `MAINTAINERS.yaml`:

```yaml
    # Assignees for charts in 'charts/monitoring-apps'
    monitoring-apps:
      - 'github-username-1'
      - 'github-username-2'

    # Fallback assignees
    default:
      - 'Xelef2000'
```
