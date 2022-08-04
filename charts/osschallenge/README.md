# osschallenge

![Version: 0.1.6](https://img.shields.io/badge/Version-0.1.6-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: edge](https://img.shields.io/badge/AppVersion-edge-informational?style=flat-square)

Chart for OSS-Challenge application

**Homepage:** <https://oss-challenge.ch>

## Maintainers
This chart is maintained by [Adfinis](https://adfinis.com/?pk_campaign=github&pk_kwd=helm-charts).

## Source Code

* <https://github.com/adfinis/osschallenge>
* <https://github.com/adfinis/helm-charts/tree/main/charts/osschallenge>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | postgresql | ~11.6.7 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| ingress.annotations | object | `{}` | Ingress annotations |
| ingress.enabled | bool | `false` | Enable ingress for osschallenge |
| ingress.hosts | list | `["localhost"]` | Ingress hostnames |
| ingress.tls | list | `[]` | Ingress TLS options |
| osschallenge.image.pullPolicy | string | `"IfNotPresent"` | OSS-Challenge image pull policy |
| osschallenge.image.repository | string | `"adfinissygroup/oss-challenge"` | OSS-Challenge image name |
| osschallenge.image.tag | string | appVersion from Chart.yaml | Specify a tag to override which version of osschallenge to deploy. |
| osschallenge.image.waitForItTimeout | int | `60` | Timeout for wait-for-it.sh |
| osschallenge.jobs.dbmigrate.enabled | bool | `true` | Enable the dbmigrate Job. This is configurable because osschallenge can also run this on startup. |
| osschallenge.livenessProbe.enabled | bool | `true` | Enable liveness probe on osschallenge |
| osschallenge.livenessProbe.failureThreshold | int | `6` | Number of tries to perform the probe |
| osschallenge.livenessProbe.initialDelaySeconds | int | `60` | Number of seconds after the container has started before liveness probe is initiated |
| osschallenge.livenessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the probe |
| osschallenge.livenessProbe.successThreshold | int | `1` | Minimum consecutive successes for the probe to be considered successful after having failed |
| osschallenge.livenessProbe.timeoutSeconds | int | `5` | Number of seconds after which the probe times out |
| osschallenge.readinessProbe.enabled | bool | `true` | Enable readiness probe on osschallenge |
| osschallenge.readinessProbe.failureThreshold | int | `6` | Number of tries to perform the probe |
| osschallenge.readinessProbe.initialDelaySeconds | int | `30` | Number of seconds after the container has started before readiness probe is initiated |
| osschallenge.readinessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the probe |
| osschallenge.readinessProbe.successThreshold | int | `1` | Minimum consecutive successes for the probe to be considered successful after having failed |
| osschallenge.readinessProbe.timeoutSeconds | int | `5` | Number of seconds after which the probe times out |
| osschallenge.replicaCount | int | `1` | Number of OSS-Challenge replicas |
| osschallenge.resources | object | `{}` | Resource limits for osschallenge |
| osschallenge.service.externalPort | int | `8000` | External Port of osschallenge service |
| osschallenge.service.internalPort | int | `8000` | Internal Port of osschallenge service |
| osschallenge.service.name | string | `"osschallenge"` | OSS-Challenge service name |
| osschallenge.service.type | string | `"ClusterIP"` | OSS-Challenge service type |
| osschallenge.settings.emailFrom | string | `"osschallenge@oss-challenge.ch"` | Default email address to use for various responses |
| osschallenge.settings.emailHost | string | `"smtp.example.com"` | Connection string of SMTP server to send mails |
| osschallenge.settings.emailPassword | string | `nil` | Password for the SMTP server |
| osschallenge.settings.emailPort | int | `587` | Port for the SMTP server |
| osschallenge.settings.emailUser | string | `"example@example.com"` | Username for the SMTP server |
| osschallenge.settings.siteUrl | string | `"https://oss-challenge.ch"` | URL for OSS-Challenge |
| persistence.accessModes | list | `["ReadWriteOnce"]` | specifes the access mode for the PV |
| persistence.enabled | bool | `true` | specifies if persistence is enabled or not |
| persistence.mountPath | string | `"/data"` | specifies where to mount the PV |
| persistence.size | string | `"10Gi"` | specifies which size the PVC should request |
| persistence.storageClassName | string | `""` | specifies which storageClassName should be used |
| postgresql.auth.database | string | `"osschallenge"` | PostgreSQL database name |
| postgresql.auth.password | string | `nil` | Set a password for PostgreSQL |
| postgresql.auth.username | string | `"osschallenge"` | PostgreSQL user name |
| postgresql.enabled | bool | `true` | Enable PostgreSQL for persistence |

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
