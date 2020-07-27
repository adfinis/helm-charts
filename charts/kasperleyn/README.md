kasperleyn
==========
A Helm 2 chart to deploy Caasperli

Current chart version is `0.3.4`


**Homepage:** <https://github.com/adfinis-sygroup/potz-holzoepfel-und-zipfelchape>


## Maintainers
This chart is maintained by [Adfinis](https://adfinis.com/?pk_campaign=github&pk_kwd=helm-charts).



## Chart Values


| Key | Type | Default | Description |
|-----|------|---------|-------------|
| `affinity` | object | `{}` |  |
| `fullnameOverride` | string | `""` |  |
| `image.pullPolicy` | string | `"Always"` |  |
| `image.repository` | string | `"adfinissygroup/potz-holzoepfel-und-zipfelchape"` |  |
| `image.tag` | string | `"latest"` |  |
| `imagePullSecrets` | list | `[]` |  |
| `ingress.annotations` | object | `{}` |  |
| `ingress.enabled` | bool | `false` |  |
| `ingress.hosts[0].host` | string | `"chart-example.local"` |  |
| `ingress.hosts[0].paths` | list | `[]` |  |
| `ingress.tls` | list | `[]` |  |
| `nameOverride` | string | `""` |  |
| `nodeSelector` | object | `{}` |  |
| `podSecurityContext` | object | `{}` |  |
| `replicaCount` | int | `1` |  |
| `resources` | object | `{}` |  |
| `securityContext` | object | `{}` |  |
| `service.port` | int | `80` |  |
| `service.type` | string | `"ClusterIP"` |  |
| `serviceAccount.create` | bool | `true` |  |
| `serviceAccount.name` | string | `nil` |  |
| `tolerations` | list | `[]` |  |

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
