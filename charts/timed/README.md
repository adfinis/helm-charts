timed
=====
Chart for Timed application

Current chart version is `0.3.3`

Source code can be found [here](https://github.com/adfinis-sygroup/timed-frontend)

## Chart Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | postgresql | ~8.7.3 |

## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
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
