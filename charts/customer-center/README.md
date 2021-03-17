# customer-center

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 2.0.0-rc.4](https://img.shields.io/badge/AppVersion-2.0.0--rc.4-informational?style=flat-square)

Chart for Customer-Center application

**Homepage:** <https://github.com/adfinis-sygroup/customer-center>

## Maintainers
This chart is maintained by [Adfinis](https://adfinis.com/?pk_campaign=github&pk_kwd=helm-charts).

## Source Code

* <https://github.com/adfinis-sygroup/customer-center>
* <https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/customer-center>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | postgresql | ~10.3.11 |
| https://charts.bitnami.com/bitnami | redis | ~12.8.3 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| backend.image.pullPolicy | string | `"IfNotPresent"` | Backend image pull policy |
| backend.image.repository | string | `"ghcr.io/adfinis-sygroup/customer-center/backend"` | Backend image name |
| backend.livenessProbe.enabled | bool | `true` | Enable liveness probe on backend |
| backend.livenessProbe.failureThreshold | int | `6` | Number of tries to perform the probe |
| backend.livenessProbe.initialDelaySeconds | int | `60` | Number of seconds after the container has started before liveness probe is initiated |
| backend.livenessProbe.path | string | `"/api/v1/health"` | Path to probe |
| backend.livenessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the probe |
| backend.livenessProbe.successThreshold | int | `1` | Minimum consecutive successes for the probe to be considered successful after having failed |
| backend.livenessProbe.timeoutSeconds | int | `5` | Number of seconds after which the probe times out |
| backend.readinessProbe.enabled | bool | `false` | Enable readiness probe on backend |
| backend.readinessProbe.failureThreshold | int | `6` | Number of tries to perform the probe |
| backend.readinessProbe.initialDelaySeconds | int | `30` | Number of seconds after the container has started before readiness probe is initiated |
| backend.readinessProbe.path | string | `"/api/v1/health"` | Path to probe |
| backend.readinessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the probe |
| backend.readinessProbe.successThreshold | int | `1` | Minimum consecutive successes for the probe to be considered successful after having failed |
| backend.readinessProbe.timeoutSeconds | int | `5` | Number of seconds after which the probe times out |
| backend.replicaCount | int | `1` | (int) Number of Backend replicas |
| backend.resources | object | `{}` | Resource limits for backend |
| backend.service.externalPort | int | `3000` | External Port of backend service |
| backend.service.internalPort | int | `3000` | Internal Port of backend service |
| backend.service.type | string | `"ClusterIP"` | Backend service type |
| backend.settings.appHost | string | `"my.example.com"` | Application host name |
| backend.settings.appName | string | `"Customer Center"` | Application name |
| backend.settings.auth.expirePassword | int | `3600` | Timeout in seconds before Redis key expiration |
| backend.settings.auth.roleAdmin | string | `"ldap-role-admin"` | Admin role to use |
| backend.settings.auth.roleEmployee | string | `"ldap-role-employee"` | Employee role to use |
| backend.settings.auth.secret | string | `"my-super-secret"` | Authentication settings |
| backend.settings.auth.usersCustomersGroupSearchBase | string | `"cn=groups,ou=customers,cn=accounts,dc=sso,dc=example,dc=com"` |  |
| backend.settings.auth.usersCustomersGroupSearchFilter | string | `"(&(uniqueMember={{dn}})(objectClass=posixGroup))"` | Search filter to get customers users groups name |
| backend.settings.auth.usersCustomersSearchBase | string | `"ou=customers,cn=accounts,dc=sso,dc=example,dc=com"` | Search base to find customers users group |
| backend.settings.auth.usersCustomersSearchFilter | string | `"(uid={{username}})"` | Search filter to get customers users name |
| backend.settings.auth.usersGroupSearchBase | string | `"cn=groups,ou=staff,cn=accounts,dc=sso,dc=example,dc=com"` | Search base to find users groups |
| backend.settings.auth.usersGroupSearchFilter | string | `"(&(uniqueMember={{dn}})(objectClass=posixGroup))"` | Search filter to get users groups name |
| backend.settings.auth.usersSearchBase | string | `"ou=staff,cn=accounts,dc=sso,dc=example,dc=com"` | Search base to find users |
| backend.settings.auth.usersSearchFilter | string | `"(uid={{username}})"` | Search filter to get users username |
| backend.settings.debug | string | `"app:info,app:warn,app:error"` | Verbosity of logging |
| backend.settings.idp.clientID | string | `"this-is-my-client-id"` | Keycloak client ID |
| backend.settings.idp.clientSecret | string | `"this-is-my-client-secret"` | Keycloak client secret |
| backend.settings.idp.host | string | `"https://sso.example.com"` | Keycloak host |
| backend.settings.idp.tokenPath | string | `"/auth/realms/example/protocol/openid-connect/token"` | Keycloak token path |
| backend.settings.ldap.bindCredentials | string | `"bind-credentials"` | LDAP password to authenticate to LDAP server according to bindDN |
| backend.settings.ldap.bindDN | string | `"uid=customercenter-test.ldap.auth,cn=systems,dc=sso,dc=example,dc=com"` | LDAP bindDN to authenticate to LDAP server |
| backend.settings.ldap.host | string | `"ldaps://sso.example.com:636"` | LDAP host |
| backend.settings.nodeENV | string | `"production"` |  |
| backend.settings.smtp.from | string | `"customer-center@example.com"` | Default email address to use for various responses |
| backend.settings.smtp.host | string | `"mail.example.com"` |  |
| backend.settings.smtp.requireTLS | bool | `true` |  |
| backend.settings.smtp.secure | bool | `true` |  |
| backend.settings.smtp.to | string | `"administration@example.com"` |  |
| backend.settings.timed | object | `{"host":"https://timed.example.com","prefix":"/api/v1"}` | Timed settings |
| backend.settings.timed.host | string | `"https://timed.example.com"` | Timed host |
| backend.settings.timed.prefix | string | `"/api/v1"` | Timed prefix |
| frontend.image.pullPolicy | string | `"IfNotPresent"` | Frontend image pull policy |
| frontend.image.repository | string | `"ghcr.io/adfinis-sygroup/customer-center/frontend"` | Frontend image name |
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
| frontend.service.type | string | `"ClusterIP"` | Frontend service type |
| ingress.annotations | object | `{}` | Ingress annotations |
| ingress.enabled | bool | `true` | Enable ingress for customer-center |
| ingress.hosts | list | `["my.example.com"]` | Ingress hostnames |
| ingress.tls | list | `[{"hosts":["my.example.com"],"secretName":"customer-center-tls"}]` | Ingress TLS options |
| postgresql.enabled | bool | `true` | Enable PostgreSQL for persistence |
| postgresql.postgresqlDatabase | string | `"db"` |  |
| postgresql.postgresqlPassword | string | `"password"` | Set a password for PostgreSQL |
| postgresql.postgresqlUsername | string | `"user"` |  |
| redis.cluster.enabled | bool | `false` | Use leader-follower topology |
| redis.enabled | bool | `true` | Enable Redis for caching |
| redis.password | string | `"my-redis-password"` | Redis password |

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
