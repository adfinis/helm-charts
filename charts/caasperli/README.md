caasperli
=========
Deploy Caasperli to a Kubernetes Cluster

Current chart version is `0.7.3`

Source code can be found [here](https://github.com/adfinis-sygroup/potz-holzoepfel-und-zipfelchape)



## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| fullnameOverride | string | `""` |  |
| grafana.enabled | bool | `false` | Enable Grafana Dashboards |
| grafana.extraLabels | object | `{}` | Labels to add to all Grafana integration resources |
| image.pullPolicy | string | `"Always"` | When to pull the container image |
| image.repository | string | `"adfinissygroup/potz-holzoepfel-und-zipfelchape"` | Container image to deploy |
| image.tag | string | `""` | Overrides the image tag whose default is the chart version. |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` | Annotations to add to the ingress resource |
| ingress.enabled | bool | `false` | Enable ingress |
| ingress.hosts | list | `[{"host":"chart-example.local","paths":[]}]` | List of hosts to expose via ingress |
| ingress.tls | list | `[]` | TLS configuration for ingress |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` | [PodSecurityContext](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/#podsecuritycontext-v1-core) |
| prometheus.enabled | bool | `false` | Enable Prometheus integration |
| prometheus.extraLabels | object | `{}` | Labels to add to all Prometheus integration resources |
| prometheus.podMonitor.enabled | bool | `true` | Enable creation of a PodMonitor CRD |
| prometheus.podMonitor.interval | string | `"30s"` | Interval at which metrics should be scraped |
| prometheus.podMonitor.metricRelabelings | list | `[]` | MetricRelabelConfigs to apply to samples before ingestion |
| prometheus.podMonitor.relabelings | list | `[]` | RelabelConfigs to apply to samples before scraping |
| prometheus.serviceMonitor.enabled | bool | `false` | Enable creation of a ServiceMonitor CRD |
| prometheus.serviceMonitor.interval | string | `"30s"` | Interval at which metrics should be scraped |
| prometheus.serviceMonitor.metricRelabelings | list | `[]` | MetricRelabelConfigs to apply to samples before ingestion |
| prometheus.serviceMonitor.relabelings | list | `[]` | RelabelConfigs to apply to samples before scraping |
| replicaCount | int | `1` | How many caasperlis to deploy |
| resources | object | `{}` |  |
| securityContext | object | `{}` | [SecurityContext](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/#securitycontext-v1-core) |
| service.port | int | `80` | Port the service will expose |
| service.type | string | `"ClusterIP"` | Type of the service to create |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| tolerations | list | `[]` |  |
