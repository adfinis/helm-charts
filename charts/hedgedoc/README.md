# hedgedoc

![Version: 0.5.4](https://img.shields.io/badge/Version-0.5.4-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.10.3](https://img.shields.io/badge/AppVersion-1.10.3-informational?style=flat-square)

Chart for HedgeDoc, a fork of CodiMD

## Maintainers
This chart is maintained by [Adfinis](https://adfinis.com/?pk_campaign=github&pk_kwd=helm-charts).

## Source Code

* <https://github.com/hedgedoc/hedgedoc>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | postgresql | ~12.2.1 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling | object | `{"enabled":false,"maxReplicas":100,"minReplicas":1,"targetCPUUtilizationPercentage":80}` | Configure autoscaling |
| existingSecret | string | `nil` | from-literal=CMD_SESSION_SECRET=verysecure |
| externalDatabase | object | `{"database":"hedgedoc","host":"localhost","password":"changeme","port":5432,"type":"postgresql","username":"setme"}` | Configure your external database here This is automatically used when postgresql.enabled is false. |
| externalDatabase.type | string | `"postgresql"` | Set the database type (postgresql|mysql) |
| extraSecretMounts | object | `{}` | Extra Secrets configuration Add additional secrets here; they will be mounted under `/var/secrets/<secret name>` You need this for SAML certificates, etc. |
| fullnameOverride | string | `""` |  |
| hedgedoc | object | `{"env":{"CMD_DOMAIN":"localhost","CMD_FORBIDDEN_NOTE_IDS":"robots.txt, favicon.ico, api, build, css, docs, fonts, js, uploads, vendor, views","CMD_HOST":"0.0.0.0","CMD_IMAGE_UPLOAD_TYPE":"filesystem","CMD_PROTOCOL_USESSL":"false","CMD_TOOBUSY_LAG":70,"CMD_URL_ADDPORT":"false","CMD_URL_PATH":"","DEBUG":"false","NODE_ENV":"production"},"persistentStorage":{"accessModes":["ReadWriteOnce"],"enabled":true,"size":"10G","storageClass":"","volumeMode":"Filesystem"},"port":3000}` | Main configuration for hedgedoc |
| hedgedoc.env | object | See the [official docs for all variables](https://docs.hedgedoc.org/configuration/) | Environment variables for Hedgedoc |
| hedgedoc.env.NODE_ENV | string | `"production"` | Node.js env |
| hedgedoc.persistentStorage | object | `{"accessModes":["ReadWriteOnce"],"enabled":true,"size":"10G","storageClass":"","volumeMode":"Filesystem"}` | Persistent Storage Enable this if you don't want to loose media |
| hedgedoc.port | int | `3000` | Port for the pod |
| image.pullPolicy | string | `"IfNotPresent"` | Override the pullPolicy |
| image.repository | string | `"quay.io/hedgedoc/hedgedoc"` | Override the repository |
| image.tag | string | `""` | Override the imaae tag |
| imagePullSecrets | list | `[]` |  |
| ingress | object | `{"annotations":{},"className":"","enabled":false,"hosts":[{"host":"chart-example.local","paths":[{"path":"/","pathType":"ImplementationSpecific"}]}],"tls":[]}` | Ingress configuration |
| livenessProbe | object | `{"enabled":true,"failureThreshold":2,"initialDelaySeconds":20,"periodSeconds":5,"successThreshold":1,"timeoutSeconds":2}` | Specify custom options for the containers liveness and readiness probes |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| postgresql | object | `{"auth":{"database":"hedgedoc","password":"hedgedoc","username":"hedgedoc","volumePermissions":{"enabled":true}},"enabled":true}` | PostgreSQL chart configuration  Reference: https://github.com/bitnami/charts/blob/master/bitnami/postgresql/values.yaml  If you want to use external database, just set postgresql.enabled to false  |
| prometheus.enabled | bool | `false` | Enable Prometheus integration |
| prometheus.extraAnnotations | object | `{}` | Annotations to add to all Prometheus integration resources |
| prometheus.extraLabels | object | `{}` | Labels to add to all Prometheus integration resources |
| prometheus.serviceMonitor.enabled | bool | `false` | Enable creation of a ServiceMonitor CRD |
| prometheus.serviceMonitor.interval | string | `"30s"` | Interval at which metrics should be scraped |
| prometheus.serviceMonitor.metricRelabelings | list | `[]` | MetricRelabelConfigs to apply to samples before ingestion |
| prometheus.serviceMonitor.relabelings | list | `[]` | RelabelConfigs to apply to samples before scraping |
| readinessProbe.enabled | bool | `true` |  |
| readinessProbe.failureThreshold | int | `2` |  |
| readinessProbe.initialDelaySeconds | int | `20` |  |
| readinessProbe.periodSeconds | int | `5` |  |
| readinessProbe.successThreshold | int | `1` |  |
| readinessProbe.timeoutSeconds | int | `2` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| service | object | `{"port":3000,"type":"ClusterIP"}` | Service configuration |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| strategy | object | `{"type":"Recreate"}` | Configure the deployment strategy |
| tolerations | list | `[]` |  |

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
