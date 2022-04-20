# mopsos

![Version: 0.4.0](https://img.shields.io/badge/Version-0.4.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v0.3.2](https://img.shields.io/badge/AppVersion-v0.3.2-informational?style=flat-square)

Deploy Mopsos to a Kubernetes Cluster

**Homepage:** <https://github.com/adfinis-sygroup/mopsos>

## Maintainers
This chart is maintained by [Adfinis](https://adfinis.com/?pk_campaign=github&pk_kwd=helm-charts).

## Source Code

* <https://github.com/adfinis-sygroup/mopsos>
* <https://github.com/adfinis-sygroup/helm-charts/tree/main/charts/mopsos>

## Requirements

Kubernetes: `>= 1.21.0`

| Repository | Name | Version |
|------------|------|---------|
| https://grafana.github.io/helm-charts | grafana | 6.26.* |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Pod affinity configuration |
| autoscaling.enabled | bool | `false` | enable Pod autoscaling |
| autoscaling.maxReplicas | int | `100` | maixmal count of replicas for Pod autoscaling |
| autoscaling.minReplicas | int | `1` | minimal count of replicas for Pod autoscaling |
| autoscaling.targetCPUUtilizationPercentage | int | `80` | CPU threshold for scaling up |
| config.basicauthusers | string | `""` | HTTP Basic Auth Users. Comma-separated list of clusters and tokens, e.g. 'cluster1:token1,cluster2:token2' |
| config.dbdsn | string | `nil` | Connection string for Database |
| config.dbmigrate | bool | `false` | wheter or not to migrate the DB upon bootup |
| config.dbprovider | string | `"postgres"` | DB Provider to use (sqlite/postgres) |
| config.debug | bool | `false` | enable debugging loglevel |
| config.otel | bool | `false` | enable otel metrics |
| config.otelcollector | string | `"localhost:30079"` | define otel collector endpoint |
| config.verbose | bool | `false` | enable verbose |
| existingSecret | string | `""` | use an existing Secret instead of creating one |
| fullnameOverride | string | `""` | fullnameOverride configuration |
| grafana."grafana.ini".server | object | see values.yaml | Grafana service config |
| grafana."grafana.ini".server.domain | string | `nil` | hostname for Grafana, must match Ingress |
| grafana.datasources | object | see values.yaml | Configure postgres datasource for Grafana |
| grafana.datasources."datasources.yaml".datasources[0].url | string | `nil` | `hostname:port` for postgresql server to be used |
| grafana.enabled | bool | `true` |  |
| grafana.envFromSecret | string | `"mopsos-secret"` | Load mopsos secrets into grafana env |
| grafana.ingress | object | see values.yaml | Grafana Ingress config |
| grafana.ingress.enabled | bool | `false` | Enable Grafana Ingress creation |
| grafana.ingress.hosts | list | `[]` | Hostnames for Grafana Ingress |
| grafana.sidecar.dashboards.enabled | bool | `true` | Deploy dashboards via ConfigMap |
| grafana.sidecar.dashboards.label | string | `"k8s.adfinis.com/grafana_dashboards"` | Label used to discover dashboards |
| grafana.sidecar.dashboards.labelValue | string | `"mopsos"` | Value of ConfigMap label |
| image.pullPolicy | string | `"IfNotPresent"` | pullPolicy to use |
| image.repository | string | `"ghcr.io/adfinis-sygroup/mopsos"` | repository where the image is located |
| image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| imagePullSecrets | list | `[]` | imagePullSecrets for pulling the image |
| ingress.annotations | object | `{}` | ingress annotations |
| ingress.className | string | `""` | which ingressClassname to use |
| ingress.enabled | bool | `false` | enable ingress for mopsos |
| ingress.hosts | list | `[{"host":"mopsos.local","paths":[{"path":"/","pathType":"ImplementationSpecific"}]}]` | ingress hostnames |
| ingress.tls | list | `[]` | ingress TLS configuration |
| nameOverride | string | `""` | nameOverride configuration |
| nodeSelector | object | `{}` | Pod nodeSelector configuration |
| podAnnotations | object | `{}` | Pod annotations to add |
| podSecurityContext | object | `{}` | Pod securityContext configuration |
| replicaCount | int | `1` | number of replicas to launch |
| resources | object | `{}` | Pod resources to define |
| securityContext | object | `{}` | Deployment securityContext configuration |
| service.port | int | `8080` | port where the service listens to |
| service.type | string | `"ClusterIP"` | service type of the application |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| tolerations | list | `[]` | Pod tolerations configuration |

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

----------------------------------------------
Autogenerated from chart metadata using [helm-docs](https://github.com/norwoodj/helm-docs/)
