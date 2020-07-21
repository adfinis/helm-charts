sentry-apps
===========
Sentry on premise

Current chart version is `0.1.0`


**Homepage:** <https://github.com/sentry-kubernetes/charts/tree/develop/sentry>


## Maintainers
This chart is maintained by [Adfinis](https://adfinis.com/?pk_campaign=github&pk_kwd=helm-charts).


## Source Code

* <https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/sentry-apps>


## Chart Requirements


| Repository | Name | Version |
|------------|------|---------|
| https://charts.adfinis.com | common | `0.0.1` |
## Chart Values


| Key | Type | Default | Description |
|-----|------|---------|-------------|
| `clickhouse.replicas` | int | `1` | total number of clickhouse replicas |
| `ingress.hostname` | string | `""` | Set this to enable the ingress configuration. |
| `kafka.defaultReplicationFactor` | int | `1` |  |
| `kafka.replicaCount` | int | `1` |  |
| `rabbitmq.enabled` | bool | `false` | enable RabbitMQ Redis will be used instead. |
| `redis.cluster` | object | `{"enabled":false}` | enable and configures the Redis cluster https://github.com/bitnami/charts/tree/master/bitnami/redis |
| `redis.enabled` | bool | `true` |  |
| `sentry.postgresqlPassword` | string | `nil` | password used to access the sentry Database required for the upgrades |
| `sentry.worker.replicas` | int | `1` | total number of sentry worker replicas |
| `spec.destination.namespace` | string | `"sentry"` | namespace for Sentry |
| `spec.destination.server` | string | `"https://kubernetes.default.svc"` | Kubernetes cluster for Sentry |
| `spec.metadata.namespace` | string | `"argocd"` | namespace for the ArgoCD application |
| `spec.source.repoURL` | string | `"https://sentry-kubernetes.github.io/charts"` | Chart museum to get Sentry |
| `spec.source.targetRevision` | string | `"4.2.0"` | revision of the chart to use for Sentry |
| `system.secretKey` | string | `nil` | secret key used for the session. Changing it invalidates all the current sessions. |
| `user.create` | bool | `true` | if true, creates the user defined by email and password. |
| `user.email` | string | `"admin@sentry.local"` | Admin user email |
| `user.password` | string | `"admin"` | Admin user password |

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
