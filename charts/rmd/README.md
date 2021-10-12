# rmd

![Version: 0.1.14](https://img.shields.io/badge/Version-0.1.14-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: edge](https://img.shields.io/badge/AppVersion-edge-informational?style=flat-square)

Chart for Rmd.io application

**Homepage:** <https://github.com/adfinis-sygroup/rmd.io>

## Maintainers
This chart is maintained by [Adfinis](https://adfinis.com/?pk_campaign=github&pk_kwd=helm-charts).

## Source Code

* <https://github.com/adfinis-sygroup/rmd.io>
* <https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/rmd>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | postgresql | ~9.1.2 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| ingress.annotations | object | `{}` | Ingress annotations |
| ingress.enabled | bool | `false` | Enable ingress for rmd |
| ingress.hosts | list | `["localhost"]` | Ingress hostnames |
| ingress.tls | list | `[]` | Ingress TLS options |
| kubeVersionOverride | string | `nil` | override what version of Kubernetes to render against |
| postgresql.enabled | bool | `true` | Enable PostgreSQL for persistence |
| postgresql.postgresqlDatabase | string | `"rmd.io"` | PostgreSQL database name |
| postgresql.postgresqlPassword | string | `nil` | Set a password for PostgreSQL |
| postgresql.postgresqlPort | int | `5432` |  |
| postgresql.postgresqlUsername | string | `"postgres"` | PostgreSQL user name |
| rmd.cronjobs.importMails.command[0] | string | `"app/manage.py"` |  |
| rmd.cronjobs.importMails.command[1] | string | `"import"` |  |
| rmd.cronjobs.importMails.schedule | string | `"0 * * * *"` | when to import mails |
| rmd.cronjobs.sendMails.command[0] | string | `"app/manage.py"` |  |
| rmd.cronjobs.sendMails.command[1] | string | `"sendmail"` |  |
| rmd.cronjobs.sendMails.schedule | string | `"10 * * * *"` | when to send mails |
| rmd.image.pullPolicy | string | `"IfNotPresent"` | Rmd image pull policy |
| rmd.image.repository | string | `"adfinissygroup/rmd"` | Rmd image name |
| rmd.image.tag | string | appVersion from Chart.yaml | Specify a tag to override which version of rmd to deploy. |
| rmd.image.waitForItTimeout | int | `60` | Timeout for wait-for-it.sh |
| rmd.livenessProbe.enabled | bool | `true` | Enable liveness probe on rmd |
| rmd.livenessProbe.failureThreshold | int | `6` | Number of tries to perform the probe |
| rmd.livenessProbe.initialDelaySeconds | int | `60` | Number of seconds after the container has started before liveness probe is initiated |
| rmd.livenessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the probe |
| rmd.livenessProbe.successThreshold | int | `1` | Minimum consecutive successes for the probe to be considered successful after having failed |
| rmd.livenessProbe.timeoutSeconds | int | `5` | Number of seconds after which the probe times out |
| rmd.readinessProbe.enabled | bool | `true` | Enable readiness probe on rmd |
| rmd.readinessProbe.failureThreshold | int | `6` | Number of tries to perform the probe |
| rmd.readinessProbe.initialDelaySeconds | int | `30` | Number of seconds after the container has started before readiness probe is initiated |
| rmd.readinessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the probe |
| rmd.readinessProbe.successThreshold | int | `1` | Minimum consecutive successes for the probe to be considered successful after having failed |
| rmd.readinessProbe.timeoutSeconds | int | `5` | Number of seconds after which the probe times out |
| rmd.replicaCount | int | `1` | (int) Number of Rmd replicas |
| rmd.resources | object | `{}` | Resource limits for rmd |
| rmd.service.externalPort | int | `8000` | External Port of rmd service |
| rmd.service.internalPort | int | `8000` | Internal Port of rmd service |
| rmd.service.name | string | `"rmd"` | Rmd service name |
| rmd.service.type | string | `"ClusterIP"` | Rmd service type |
| rmd.settings.emailFolder | string | `"INBOX"` | Folder name on the SMTP server |
| rmd.settings.emailFrom | string | `"maildelay@rmd.io"` | Default email address to use for various responses |
| rmd.settings.emailHost | string | `"smtp.examplexample.ch"` | Connection string of SMTP server to send mails |
| rmd.settings.emailPassword | string | `nil` | Password for the SMTP server |
| rmd.settings.emailPort | int | `587` | Port for the SMTP server |
| rmd.settings.emailUser | string | `"maildelay@dev.rmd.io"` | Username for the SMTP server |
| rmd.settings.secret | string | `nil` | django secret key |
| rmd.settings.sentry | string | `nil` | sentry dsn |
| rmd.settings.siteUrl | string | `"http://localhost:8000"` | URL for Rmd.io |

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
