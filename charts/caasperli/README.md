caasperli
=========
Deploy Caasperli to a Kubernetes Cluster

Current chart version is `0.4.0`

Source code can be found [here](https://github.com/fujexo/potz-holzoepfel-und-zipfelchape)



## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"Always"` | When to pull the container image |
| image.repository | string | `"fujexo/potz-holzoepfel-und-zipfelchape"` | Container image to deploy |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` | Annotations to add to the ingress resource |
| ingress.enabled | bool | `false` | Enable ingress |
| ingress.hosts | list | `[{"host":"chart-example.local","paths":[]}]` | List of hosts to expose via ingress |
| ingress.tls | list | `[]` | TLS configuration for ingress |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podSecurityContext | object | `{}` | [PodSecurityContext](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/#podsecuritycontext-v1-core) |
| replicaCount | int | `1` | How many caasperlis to deploy |
| resources | object | `{}` |  |
| securityContext | object | `{}` | [SecurityContext](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/#securitycontext-v1-core) |
| service.port | int | `80` | Port the service will expose |
| service.type | string | `"ClusterIP"` | Type of the service to create |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `nil` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| tolerations | list | `[]` |  |
