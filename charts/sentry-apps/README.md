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
| https://charts.adfinis.com | argoconfig | `~0.6.1` |
## Chart Values


| Key | Type | Default | Description |
|-----|------|---------|-------------|
| `clickhouse.replicas` | int | `1` | total number of clickhouse replicas |
| `config` | object | `{}` | extra configuration for some config maps @defaults -- See [values.yaml](https://github.com/sentry-kubernetes/charts/tree/develop/sentry) of upstream project |
| `ingress.enabled` | bool | `false` | if true, enables the ingress configuration. |
| `ingress.hostname` | string | `""` | hostname to use |
| `kafka` | object | `{}` |  |
| `postgresql.postgresqlPassword` | string | `nil` | password used to access the database |
| `rabbitmq.enabled` | bool | `false` | enable RabbitMQ Redis will be used instead. |
| `redis` | object | `{"cluster":{"slaveCount":1},"enabled":true}` | Redis settigs @defaults -- See [bitnami/redis](https://github.com/bitnami/charts/tree/master/bitnami/redis) chart |
| `redis.cluster.slaveCount` | int | `1` | number of followers in the Redis cluster |
| `relay.replicas` | int | `1` | total number of relay replicas (use 0 when bootstrapping) |
| `sentry.worker.replicas` | int | `1` | total number of sentry worker replicas |
| `spec.destination.namespace` | string | `"sentry"` | namespace for Sentry |
| `spec.metadata.name` | string | `"sentry"` | name for the ArgoCD application |
| `spec.metadata.namespace` | string | `"argocd"` | namespace for the ArgoCD application |
| `spec.project` | string | `"default"` | project to deploy the ArgoCD application to |
| `spec.source.chart` | string | `"sentry"` | name of the Chart for Sentry |
| `spec.source.path` | string | `""` | path of the Chart for Sentry when using Git repository |
| `spec.source.repoURL` | string | `"https://sentry-kubernetes.github.io/charts"` | Chart museum to get Sentry |
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
