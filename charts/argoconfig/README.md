argoconfig
==========
Configure Argo CD AppProjects, Applications and more

Current chart version is `0.6.1`

Source code can be found [here](https://argoproj.github.io/argo-cd/operator-manual/declarative-setup/)

## Chart Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.adfinis.com | common | 0.0.0 |

## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| clusters | object | see [docs](https://argoproj.github.io/argo-cd/operator-manual/declarative-setup/#clusters) | Argo CD cluster secrets |
| clusters.defaults.config | object | `{}` | Cluster config |
| clusters.defaults.enabled | bool | `false` | Enable creating cluster secret |
| clusters.defaults.namespace | string | `"argocd"` | Namespace to put the cluster config secret into |
| clusters.local.enabled | bool | `true` | Local cluster is enabled by default |
| clusters.local.server | string | Local cluster | Cluster API endpoint |
| fullnameOverride | string | `""` | Override fullname |
| nameOverride | string | `""` | Override names |
