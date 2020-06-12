argoconfig
==========
Configure Argo CD AppProjects, Applications and more

Current chart version is `0.5.0`

Source code can be found [here](https://github.com/adfinis-sygroup/helm-charts)



## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| appProject | object | see [docs](https://argoproj.github.io/argo-cd/operator-manual/declarative-setup/#projects) | Project configuration |
| appProject.enabled | bool | `false` | Enable creating an AppProject resource |
| appProject.namespace | string | `"argocd"` | Namespace for AppProject resource |
| apps | object | deactivated defaults app | Map of Argo CD apps |
| apps.defaults | object | see [docs](https://argoproj.github.io/argo-cd/operator-manual/declarative-setup/#applications) | Defaults used for all apps added to apps map |
| apps.defaults.enabled | bool | `false` | Enable creating an Application resource |
| apps.defaults.namespace | string | `"argocd"` | Namespace for Application resource |
| apps.defaults.projectOverride | string | Fullname | Name of AppProject to install into |
| apps.defaults.values | object | `{}` | Helm values |
| clusters | object | see [docs](https://argoproj.github.io/argo-cd/operator-manual/declarative-setup/#clusters) | Argo CD cluster secrets |
| clusters.defaults.config | object | `{}` | Cluster config |
| clusters.defaults.enabled | bool | `false` | Enable creating cluster secret |
| clusters.defaults.namespace | string | `"argocd"` | Namespace to put the cluster config secret into |
| clusters.local.enabled | bool | `true` | Local cluster is enabled by default |
| clusters.local.server | string | Local cluster | Cluster API endpoint |
| fullnameOverride | string | `""` | Override fullname |
| nameOverride | string | `""` | Override names |
