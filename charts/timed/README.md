# timed

![Version: 0.7.6](https://img.shields.io/badge/Version-0.7.6-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v1.3.0](https://img.shields.io/badge/AppVersion-v1.3.0-informational?style=flat-square)

Chart for Timed application

**Homepage:** <https://github.com/adfinis-sygroup/timed-frontend>

## Maintainers
This chart is maintained by [Adfinis](https://adfinis.com/?pk_campaign=github&pk_kwd=helm-charts).

## Source Code

* <https://github.com/adfinis-sygroup/timed-backend>
* <https://github.com/adfinis-sygroup/timed-frontend>
* <https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/timed>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | postgresql | ~9.1.2 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| auth.allowLocalLogin | string | `"False"` | Allow local Django login |
| auth.oidc.adminLoginRedirectUrl | string | `"https://example.com/admin/"` | URL of the django-admin, to which the user is redirected after successful admin login |
| auth.oidc.claims.email | string | `"email"` | OIDC email claim name |
| auth.oidc.claims.firstname | string | `"given_name"` | OIDC firstname claim name |
| auth.oidc.claims.lastname | string | `"family_name"` | OIDC lastname claim name |
| auth.oidc.claims.username | string | `"preferred_username"` | OIDC username claim name |
| auth.oidc.client.id | string | `"timed"` | OIDC client id |
| auth.oidc.createUser | string | `"False"` | OIDC create user in timed db if it does not already exist |
| auth.oidc.endPoints.auth | string | `nil` | OIDC /auth endpoint |
| auth.oidc.endPoints.jwks | string | `nil` | OIDC /certs endpoint |
| auth.oidc.endPoints.token | string | `nil` | OIDC /token endpoint |
| auth.oidc.endPoints.userInfo | string | `nil` | OIDC /userinfo endpoint |
| auth.oidc.introspect.client.id | string | `"timed-confidential"` | OIDC introspect client id |
| auth.oidc.introspect.client.secret | string | `nil` | OIDC introspect client secret |
| auth.oidc.introspect.enabled | bool | `true` | Enable OIDC introspect |
| auth.oidc.introspect.endpoint | string | `nil` | OIDC introspect endpoint |
| auth.oidc.signAlgorithm | string | `"RS256"` | Algorithm the OIDC provider uses to sign ID tokens |
| auth.oidc.url | string | `"https://example.com/auth/realms/timed/protocol/openid-connect"` |  |
| auth.oidc.verifySSL | string | `"True"` | OIDC verify SSL |
| backend.cronjobs.notifyChangedEmployments | object | `{"command":["./manage.py","notify_changed_employments"],"schedule":"0 2 * * 1"}` | Notify changed employments |
| backend.cronjobs.notifyReviewersFirst | object | `{"command":["./manage.py","notify_reviewers_unverified","--offset","5"],"schedule":"0 8 4 * *"}` | Notify reviewers first stage |
| backend.cronjobs.notifyReviewersFirst.command[3] | string | `"5"` | Period will end today minus given offset |
| backend.cronjobs.notifyReviewersSecond | object | `{"command":["./manage.py","notify_reviewers_unverified","--offset","12","--message","'Please verify your reports.'"],"schedule":"0 8 11 * *"}` | Notify reviewers second stage |
| backend.cronjobs.notifyReviewersSecond.command[3] | string | `"12"` | Period will end today minus given offset |
| backend.cronjobs.notifyReviewersSecond.command[5] | string | `"'Please verify your reports.'"` | Additional message to send if there are unverified reports |
| backend.cronjobs.notifyReviewersThird | object | `{"command":["./manage.py","notify_reviewers_unverified","--offset","19","--message","'Please verify your reports immediately!'"],"schedule":"0 8 18 * *"}` | Notify reviewers third stage |
| backend.cronjobs.notifyReviewersThird.command[3] | string | `"19"` | Period will end today minus given offset |
| backend.cronjobs.notifyReviewersThird.command[5] | string | `"'Please verify your reports immediately!'"` | Additional message to send if there are unverified reports |
| backend.cronjobs.notifySupervisors | object | `{"command":["./manage.py","notify_supervisors_shorttime"],"schedule":"0 8 * * 4"}` | Notify supervisors |
| backend.cronjobs.redmineReport | object | `{"command":["./manage.py","redmine_report"],"schedule":"0 1 * * 1"}` | Redmine report |
| backend.image.pullPolicy | string | `"IfNotPresent"` | Backend image pull policy |
| backend.image.repository | string | `"adfinissygroup/timed-backend"` | Backend image name |
| backend.image.tag | string | `"v1.3.0"` | Backend version (optional) in case it differs from appVersion in Chart.yaml |
| backend.livenessProbe.enabled | bool | `true` | Enable liveness probe on backend |
| backend.livenessProbe.failureThreshold | int | `6` | Number of tries to perform the probe |
| backend.livenessProbe.initialDelaySeconds | int | `60` | Number of seconds after the container has started before liveness probe is initiated |
| backend.livenessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the probe |
| backend.livenessProbe.successThreshold | int | `1` | Minimum consecutive successes for the probe to be considered successful after having failed |
| backend.livenessProbe.timeoutSeconds | int | `5` | Number of seconds after which the probe times out |
| backend.readinessProbe.enabled | bool | `true` | Enable readiness probe on backend |
| backend.readinessProbe.failureThreshold | int | `6` | Number of tries to perform the probe |
| backend.readinessProbe.initialDelaySeconds | int | `30` | Number of seconds after the container has started before readiness probe is initiated |
| backend.readinessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the probe |
| backend.readinessProbe.successThreshold | int | `1` | Minimum consecutive successes for the probe to be considered successful after having failed |
| backend.readinessProbe.timeoutSeconds | int | `5` | Number of seconds after which the probe times out |
| backend.replicaCount | int | `1` | (int) Number of Backend replicas |
| backend.resources | object | `{}` | Resource limits for backend |
| backend.service.externalPort | int | `80` | External Port of backend service |
| backend.service.internalPort | int | `80` | Internal Port of backend service |
| backend.service.name | string | `"timed-backend"` | Backend service name |
| backend.service.type | string | `"ClusterIP"` | Backend service type |
| backend.settings.admins | list | `[]` | Django administrators, example: Jon Doe <jon.doe@example.com> |
| backend.settings.emailFrom | string | `"webmaster@chart-example.local"` | Default email address to use for various responses |
| backend.settings.emailUrl | string | `"smtp://localhost:25"` | Connection string of SMTP server to send mails |
| backend.settings.gunicorn.cmdArgs | string | `""` | gunicorn additional arguments |
| backend.settings.gunicorn.workers | int | `8` | Number of gunicorn workers |
| backend.settings.sentry.dsn | string | `nil` | Sentry DSN for error reporting. Set to enable Sentry integration |
| backend.settings.sentry.enabled | bool | `false` | Enable Sentry integration |
| backend.settings.sentry.sendDefaultPii | string | `"True"` | Associate users to errors in Sentry |
| backend.settings.sentry.tracesSampleRate | float | `1` | Sentry trace sample rate, Set 1.0 to capture 100% of transactions |
| backend.settings.serverEmail | string | `"webmaster@chart-example.local"` | Email address error messages are sent from |
| backend.settings.workReportPath | string | `"/etc/workreport"` | Path where the workreport shall be loaded from. The contents of the default path is filled from `configmap-workreport.yaml`. |
| frontend.image.pullPolicy | string | `"IfNotPresent"` | Frontend image pull policy |
| frontend.image.repository | string | `"adfinissygroup/timed-frontend"` | Frontend image name |
| frontend.image.tag | string | `"v1.3.1"` | Frontend version (optional) in case it differs from appVersion in Chart.yaml |
| frontend.livenessProbe.enabled | bool | `true` | Enable liveness probe on frontend |
| frontend.livenessProbe.failureThreshold | int | `6` | Number of tries to perform the probe |
| frontend.livenessProbe.initialDelaySeconds | int | `60` | Number of seconds after the container has started before liveness probe is initiated |
| frontend.livenessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the probe |
| frontend.livenessProbe.successThreshold | int | `1` | Minimum consecutive successes for the probe to be considered successful after having failed |
| frontend.livenessProbe.timeoutSeconds | int | `5` | Number of seconds after which the probe times out |
| frontend.readinessProbe.enabled | bool | `true` | Enable readiness probe on frontend |
| frontend.readinessProbe.failureThreshold | int | `6` | Number of tries to perform the probe |
| frontend.readinessProbe.initialDelaySeconds | int | `30` | Number of seconds after the container has started before readiness probe is initiated |
| frontend.readinessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the probe |
| frontend.readinessProbe.successThreshold | int | `1` | Minimum consecutive successes for the probe to be considered successful after having failed |
| frontend.readinessProbe.timeoutSeconds | int | `5` | Number of seconds after which the probe times out |
| frontend.replicaCount | int | `1` | (int) Number of Backend replicas |
| frontend.resources | object | `{}` | Resource limits for frontend |
| frontend.service.externalPort | int | `80` | External Port of frontend service |
| frontend.service.internalPort | int | `80` | Internal Port of frontend service |
| frontend.service.name | string | `"timed-frontend"` | Frontend service name |
| frontend.service.type | string | `"ClusterIP"` | Frontend service type |
| grafana.defaultLabel | bool | `true` | Add a default `grafana_dashboard: 1` label |
| grafana.enabled | bool | `false` | Enable Grafana Dashboards |
| grafana.extraLabels | object | `{}` | Labels to add to all Grafana integration resources |
| ingress.annotations | object | `{}` | Ingress annotations |
| ingress.enabled | bool | `false` | Enable ingress for timed |
| ingress.hosts | list | `[]` | Ingress hostnames |
| ingress.tls | list | `[]` | Ingress TLS options |
| postgresql.enabled | bool | `true` | Enable PostgreSQL for persistence |
| postgresql.image.tag | string | `"12.3.0"` | PostgreSQL image version to use |
| postgresql.ingress.enabled | bool | `false` | Enable ingress |
| postgresql.ingress.loadBalancerSourceRanges | list | `[]` | Whitelist specific IP ranges |
| postgresql.ingress.selector | object | `{"app.kubernetes.io/name":"postgresql","role":"slave"}` | Service selector labels |
| postgresql.postgresqlDatabase | string | `"timed"` | PostgreSQL database name |
| postgresql.postgresqlUsername | string | `"postgres"` | PostgreSQL user name |
| postgresql.tls.certFilename | string | `"tls.crt"` | Cert file name |
| postgresql.tls.certKeyFilename | string | `"tls.key"` | Cert key filename |
| postgresql.tls.certificate.dnsNames | list | `[]` | DNS names of certificate |
| postgresql.tls.certificate.issuerRef | object | cert-manager | Issuer ref |
| postgresql.tls.certificate.name | string | `"psql-server"` | Name of certificate |
| postgresql.tls.certificatesSecret | string | `"psql-server"` | Name of TLS secret |
| postgresql.tls.enabled | bool | `false` | Enable TLS for Postgresql |
| prometheus.enabled | bool | `false` | Enable Prometheus integration |
| prometheus.extraLabels | object | `{}` | Labels to add to all Prometheus integration resources |
| prometheus.podMonitor.enabled | bool | `true` | Enable creation of a PodMonitor CRD |
| prometheus.podMonitor.interval | string | `"30s"` | Interval at which metrics should be scraped |
| prometheus.podMonitor.metricRelabelings | list | `[]` | MetricRelabelConfigs to apply to samples before ingestion |
| prometheus.podMonitor.relabelings | list | `[]` | RelabelConfigs to apply to samples before scraping |
| redmine.apiKey | string | `""` | Redmine API Key |
| redmine.enabled | bool | `false` | Enable Redmine integration |
| redmine.spenthoursField | int | `0` | Spent hours field id on Redmine |
| redmine.url | string | `"redmine.example.com"` | Redmine URL |

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
