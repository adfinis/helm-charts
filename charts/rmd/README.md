rmd
===
Chart for Rmd.io application

Current chart version is `0.1.0`


**Homepage:** <https://github.com/adfinis-sygroup/rmd.io>


## Maintainers
This chart is maintained by [Adfinis](https://adfinis.com/?pk_campaign=github&pk_kwd=helm-charts).


## Source Code

* <https://github.com/adfinis-sygroup/rmd.io>
* <https://github.com/trowik/helm-charts/tree/master/charts/rmd>


## Chart Requirements


| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | postgresql | `~8.10.14` |
## Chart Values


| Key | Type | Default | Description |
|-----|------|---------|-------------|
| `ingress.annotations` | object | `{}` | Ingress annotations |
| `ingress.enabled` | bool | `false` | Enable ingress for rmd |
| `ingress.hosts` | list | `[]` | Ingress hostnames |
| `ingress.tls` | list | `[]` | Ingress TLS options |
| `postgresql.enabled` | bool | `true` | Enable PostgreSQL for persistence |
| `postgresql.image.tag` | string | `"12.2.0"` | PostgreSQL image version to use |
| `postgresql.postgresqlDatabase` | string | `"rmd.io"` | PostgreSQL database name |
| `postgresql.postgresqlUsername` | string | `"postgres"` | PostgreSQL user name |
| `rmd.cronjobs.importMails` | object | `{"command":["app/manage.py","import"],"schedule":"0 * * * *"}` | import Mails |
| `rmd.cronjobs.sendMails` | object | `{"command":["app/manage.py","sendmail"],"schedule":"10 * * * *"}` | send Mails |
| `rmd.image.pullPolicy` | string | `"IfNotPresent"` | Rmd image pull policy |
| `rmd.image.repository` | string | `"wiktorkepczynski/my_rmd"` | Rmd image name |
| `rmd.livenessProbe.enabled` | bool | `true` | Enable liveness probe on rmd |
| `rmd.livenessProbe.failureThreshold` | int | `6` | Number of tries to perform the probe |
| `rmd.livenessProbe.initialDelaySeconds` | int | `60` | Number of seconds after the container has started before liveness probe is initiated |
| `rmd.livenessProbe.periodSeconds` | int | `10` | How often (in seconds) to perform the probe |
| `rmd.livenessProbe.successThreshold` | int | `1` | Minimum consecutive successes for the probe to be considered successful after having failed |
| `rmd.livenessProbe.timeoutSeconds` | int | `5` | Number of seconds after which the probe times out |
| `rmd.readinessProbe.enabled` | bool | `true` | Enable readiness probe on rmd |
| `rmd.readinessProbe.failureThreshold` | int | `6` | Number of tries to perform the probe |
| `rmd.readinessProbe.initialDelaySeconds` | int | `30` | Number of seconds after the container has started before readiness probe is initiated |
| `rmd.readinessProbe.periodSeconds` | int | `10` | How often (in seconds) to perform the probe |
| `rmd.readinessProbe.successThreshold` | int | `1` | Minimum consecutive successes for the probe to be considered successful after having failed |
| `rmd.readinessProbe.timeoutSeconds` | int | `5` | Number of seconds after which the probe times out |
| `rmd.replicaCount` | int | `1` | (int) Number of Rmd replicas |
| `rmd.resources` | object | `{}` | Resource limits for rmd |
| `rmd.service.externalPort` | int | `80` | External Port of rmd service |
| `rmd.service.internalPort` | int | `80` | Internal Port of rmd service |
| `rmd.service.name` | string | `"rmd"` | Rmd service name |
| `rmd.service.type` | string | `"ClusterIP"` | Rmd service type |
| `rmd.settings.emailFrom` | string | `"maildelay@rmd.io"` | Default email address to use for various responses |
| `rmd.settings.emailHost` | string | `"smtp.syhosting.ch:587"` | Connection string of SMTP server to send mails |
| `rmd.settings.serverEmail` | string | `"maildelay@rmd.io"` | Email address error messages are sent from |

## About this chart

Adfinis fights for a software world that is more open, where the quality is
better and where software must be accessible to everyone. This chart
is part of the action behind this comitment. Feel free to
[contact](https://adfinis.com/kontakt/?pk_campaign=github&pk_kwd=helm-charts)
us if you have any questions.

## License

This Helm chart is free software: you can redistribute it and/or modify it under the terms
of the GNU Affero General Public License as published by the Free Software Foundation,
version 3 of the License.
