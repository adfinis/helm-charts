# argoconfig

![Version: 0.6.2](https://img.shields.io/badge/Version-0.6.2-informational?style=flat-square) ![Type: library](https://img.shields.io/badge/Type-library-informational?style=flat-square) ![AppVersion: latest](https://img.shields.io/badge/AppVersion-latest-informational?style=flat-square)

Configure Argo CD AppProjects, Applications and more

**Homepage:** <https://argoproj.github.io/argo-cd/operator-manual/declarative-setup/>

## Maintainers
This chart is maintained by [Adfinis](https://adfinis.com/?pk_campaign=github&pk_kwd=helm-charts).

## Source Code

* <https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/argoconfig>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.adfinis.com | common | 0.0.0 |

## Values

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

## About this chart

Adfinis fights for a software world that is more open, where the quality is
better and where software must be accessible to everyone. This chart
is part of the action behind this commitment. Feel free to
[contact](https://adfinis.com/kontakt/?pk_campaign=github&pk_kwd=helm-charts)
us if you have any questions.

## License

This Helm chart is free software: you can redistribute it and/or modify it under the terms
of the GNU Affero General Public License as published by the Free Software Foundation,
version 3 of the License.
