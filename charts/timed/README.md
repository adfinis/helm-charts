timed
=====
Chart for Timed application

Current chart version is `0.3.9`

Source code can be found [here](https://github.com/adfinis-sygroup/timed-frontend)

## Chart Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | postgresql | ~8.7.3 |

## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| auth.ldap.bindDn | string | `"uid=auth_user,cn=systems,dc=example,dc=com"` | LDAP bind DN |
| auth.ldap.enabled | bool | `false` | Enable LDAP user authentication |
| auth.ldap.password | string | `"s3cr3t"` | LDAP password |
| auth.ldap.serverUri | string | `"ldaps://ldap.example.com:636"` |  |
| auth.ldap.userAttrMap | string | `"{\"first_name\": \"givenName\", \"last_name\": \"sn\", \"email\": \"mail\"}"` | LDAP user attribute mapping |
| auth.ldap.userDnTemplate | string | `"uid=%(user)s,cn=users,dc=foo,dc=com"` | LDAP user DN template |
| backend.cronjobs.notifyChangedEmployments | object | `{"command":["./manage.py","notify_changed_employments"],"schedule":"0 2 * * 1"}` | Notify changed employments |
| backend.cronjobs.notifyReviewersFirst | object | `{"command":["./manage.py","notify_reviewers_unverified","--offset","5"],"schedule":"0 8 4 * *"}` | Notify reviewers first stage |
| backend.cronjobs.notifyReviewersFirst.command[3] | string | `"5"` | Period will end today minus given offset |
| backend.cronjobs.notifyReviewersSecond | object | `{"command":["./manage.py","notify_reviewers_unverified","--offset","12","--message","'Bitte verbleibende Positionen verifizieren.'"],"schedule":"0 8 11 * *"}` | Notify reviewers second stage |
| backend.cronjobs.notifyReviewersSecond.command[3] | string | `"12"` | Period will end today minus given offset |
| backend.cronjobs.notifyReviewersSecond.command[5] | string | `"'Bitte verbleibende Positionen verifizieren.'"` | Additional message to send if there are unverified reports |
| backend.cronjobs.notifyReviewersThird | object | `{"command":["./manage.py","notify_reviewers_unverified","--offset","19","--message","'Bitte sofort verifizieren!'"],"schedule":"0 8 18 * *"}` | Notify reviewers third stage |
| backend.cronjobs.notifyReviewersThird.command[3] | string | `"19"` | Period will end today minus given offset |
| backend.cronjobs.notifyReviewersThird.command[5] | string | `"'Bitte sofort verifizieren!'"` | Additional message to send if there are unverified reports |
| backend.cronjobs.notifySupervisors | object | `{"command":["./manage.py","notify_supervisors_shorttime"],"schedule":"0 8 * * 4"}` | Notify supervisors |
| backend.cronjobs.redmineReport | object | `{"command":["./manage.py","redmine_report"],"schedule":"0 1 * * 1"}` | Redmine report |
| backend.image.pullPolicy | string | `"IfNotPresent"` | Backend image pull policy |
| backend.image.repository | string | `"adfinissygroup/timed-backend"` | Backend image name |
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
| backend.settings.emailFrom | string | `"webmaster@chart-example.local"` | Default email address to use for various responses |
| backend.settings.emailUrl | string | `"smtp://localhost:25"` | Connection string of SMTP server to send mails |
| backend.settings.serverEmail | string | `"webmaster@chart-example.local"` | Email address error messages are sent from |
| backend.settings.workReportPath | string | `"/etc/workreport"` | Path where the workreport shall be loaded from. The contents of the default path is filled from `configmap-workreport.yaml`. |
| frontend.image.pullPolicy | string | `"IfNotPresent"` | Backend image pull policy |
| frontend.image.repository | string | `"adfinissygroup/timed-frontend"` | Backend image name |
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
| frontend.service.name | string | `"timed-frontend"` | Backend service name |
| frontend.service.type | string | `"ClusterIP"` | Backend service type |
| ingress.annotations | object | `{}` | Ingress annotations |
| ingress.enabled | bool | `false` | Enable ingress for timed |
| ingress.hosts | list | `[]` | Ingress hostnames |
| ingress.tls | list | `[]` | Ingress TLS options |
| postgresql.enabled | bool | `true` | Enable PostgreSQL for persistence |
| postgresql.image.tag | string | `"12.2.0"` | PostgreSQL image version to use |
| postgresql.postgresqlDatabase | string | `"timed"` | PostgreSQL database name |
| postgresql.postgresqlUsername | string | `"postgres"` | PostgreSQL user name |
| redmine.apiKey | string | `""` | Redmine API Key |
| redmine.enabled | bool | `false` | Enable Redmine integration |
| redmine.htaccessPassword | string | `""` | Redmine htaccess password |
| redmine.htaccessUser | string | `""` | Redmine htaccess user |
| redmine.spenthoursField | int | `0` | Spent hours field id on Redmine |
| redmine.url | string | `"redmine.example.com"` | Redmine URL |
