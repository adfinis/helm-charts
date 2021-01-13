# sentry-apps

![Version: 0.3.7](https://img.shields.io/badge/Version-0.3.7-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 5.1.2](https://img.shields.io/badge/AppVersion-5.1.2-informational?style=flat-square)

Sentry on premise

**Homepage:** <https://github.com/sentry-kubernetes/charts/tree/develop/sentry>

## Maintainers
This chart is maintained by [Adfinis](https://adfinis.com/?pk_campaign=github&pk_kwd=helm-charts).

## Source Code

* <https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/sentry-apps>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.adfinis.com | argoconfig | ~0.6.1 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| clickhouse.replicas | int | `1` | total number of clickhouse replicas |
| config | object | See [values.yaml](https://github.com/sentry-kubernetes/charts/blob/develop/sentry/values.yaml) of upstream project | extra configuration for some config maps |
| hooks | object | See [values.yaml](https://github.com/sentry-kubernetes/charts/blob/develop/sentry/values.yaml) of upstream project | configure hooks |
| ingress.enabled | bool | `false` | if true, enables the ingress configuration. |
| ingress.hostname | string | `""` | hostname to use |
| kafka.defaultReplicationFactor | int | `1` | replication factor for automatically created topics |
| kafka.offsetsTopicReplicationFactor | int | `1` | replication factor for the offsets topic |
| kafka.replicaCount | int | `1` | number of Kakfa brokers to deploy |
| kafka.transactionStateLogMinIsr | int | `1` | overridden min.insync.replicas config for the transaction topic |
| kafka.transactionStateLogReplicationFactor | int | `1` | replication factor for the transaction topic |
| nginx | object | See [sentry's default](https://github.com/sentry-kubernetes/charts/blob/develop/sentry/values.yaml) | NGINX configuration (required when `ingress.enabled=false`) |
| nginx.enabled | bool | `true` | enables nginx |
| postgresql.persistence.enabled | bool | `true` | Enable postgresql persistence |
| postgresql.postgresqlPassword | string | `nil` | password used to access the database |
| rabbitmq.enabled | bool | `false` | enable RabbitMQ Redis will be used instead. |
| redis | object | See [bitnami/redis](https://github.com/bitnami/charts/tree/master/bitnami/redis) chart | Redis settigs |
| redis.cluster.slaveCount | int | `1` | number of followers in the Redis cluster |
| relay.replicas | int | `1` | total number of relay replicas (use 0 when bootstrapping) |
| sentry.worker.replicas | int | `1` | total number of sentry worker replicas |
| spec.destination.namespace | string | `"sentry"` | namespace for Sentry |
| spec.metadata.name | string | `"sentry"` | name for the ArgoCD application |
| spec.metadata.namespace | string | `"argocd"` | namespace for the ArgoCD application |
| spec.project | string | `"default"` | project to deploy the ArgoCD application to |
| spec.source.chart | string | `"sentry"` | name of the Chart for Sentry |
| spec.source.path | string | `""` | path of the Chart for Sentry when using Git repository |
| spec.source.repoURL | string | `"https://sentry-kubernetes.github.io/charts"` | Chart museum to get Sentry |
| spec.source.targetRevision | string | current appVersion | revision of the chart to use for Sentry |
| system.secretKey | string | `nil` | secret key used for the session. Changing it invalidates all the current sessions. |
| user.create | bool | `true` | if true, creates the user defined by email and password. |
| user.email | string | `"admin@sentry.local"` | Super user email |
| user.password | string | A randomly generated one. | Super user password. |
| zookeeper | object | Persistence enabled | extra configuration for the [zookeper chart](https://github.com/bitnami/charts/tree/master/bitnami/zookeeper) |

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
