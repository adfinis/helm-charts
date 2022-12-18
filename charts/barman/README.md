# barman

![Version: 0.11.0](https://img.shields.io/badge/Version-0.11.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 3.3.0](https://img.shields.io/badge/AppVersion-3.3.0-informational?style=flat-square)

Chart for Barman PostgreSQL Backup and Recovery Manager

**Homepage:** <http://www.pgbarman.org/>

## Maintainers
This chart is maintained by [Adfinis](https://adfinis.com/?pk_campaign=github&pk_kwd=helm-charts).

## Source Code

* <https://github.com/2ndquadrant-it/barman>
* <https://github.com/basalam/barman-docker>
* <https://github.com/adfinis/helm-charts/tree/main/charts/barman>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| barman.backupDir | string | `"/var/lib/barman"` | Barman home directory |
| barman.backupMethod | string | `"postgres"` | Barman backup method |
| barman.backupOptions | string | `"concurrent_backup"` | Barman backup options |
| barman.backupSchedule | string | `"0 4 * * *"` | Barman backup schedule |
| barman.backups[0] | object | `{"additionalConfiguration":"","backupMethod":"postgres","createDatabaseSlot":true,"databaseSlotName":"barman","lastBackupMaximumAge":"1 day","namespace":"postgresql","postgresql":{"host":"postgresql","port":5432,"replicationPassword":"barman","replicationUser":"barman","superUser":"postgres","superUserDatabase":"postgres","superUserPassword":"postgres"},"retentionPolicy":"RECOVERY WINDOW of 1 MONTH","scopeName":"pg","serviceaccount":"postgresql"}` | Barman retention policy |
| barman.backups[0].additionalConfiguration | string | `""` | Barman additional Parameters for configuration File |
| barman.backups[0].backupMethod | string | `"postgres"` | Barman backup method |
| barman.backups[0].createDatabaseSlot | bool | `true` | Create Database slot |
| barman.backups[0].databaseSlotName | string | `"barman"` | Database slot name to be created/used |
| barman.backups[0].lastBackupMaximumAge | string | `"1 day"` | Barman last backup maximum age |
| barman.backups[0].namespace | string | `"postgresql"` | namespace where postgresql is deployed, not active when barman.createRbac is false |
| barman.backups[0].postgresql.host | string | `"postgresql"` | Postgresql host |
| barman.backups[0].postgresql.port | int | `5432` | Postgresql port |
| barman.backups[0].postgresql.replicationPassword | string | `"barman"` | Postgresql replication password |
| barman.backups[0].postgresql.replicationUser | string | `"barman"` | Postgresql replication user |
| barman.backups[0].postgresql.superUser | string | `"postgres"` | Postgresql super user |
| barman.backups[0].postgresql.superUserDatabase | string | `"postgres"` | Postgresql super user database |
| barman.backups[0].postgresql.superUserPassword | string | `"postgres"` | Postgresql super user password |
| barman.backups[0].scopeName | string | `"pg"` | Postgresql server scope-name |
| barman.backups[0].serviceaccount | string | `"postgresql"` | service account of the postgresql deployment, not active when barman.createRbac is false |
| barman.barmanUser | string | `"barman"` | Barman user |
| barman.compression | string | `"gzip"` | Barman backup compression |
| barman.createDatabaseSlot | bool | `true` | Create Database slot |
| barman.databaseSlotName | string | `"barman"` | Database slot name to be created/used |
| barman.lastBackupMaximumAge | string | `"1 day"` | Barman last backup maximum age |
| barman.postBackupRetryScript | string | `""` | Barman post_backup_retry_script |
| barman.preRecoveryRetryScript | string | `""` | Barman pre_recovery_retry_script |
| barman.retentionPolicy | string | `"RECOVERY WINDOW of 1 MONTH"` | Barman retention policy |
| deployment.additionalENVs | object | `{}` | Specify additional ENVs for the Deployment |
| deployment.additionalVolumeMounts | list | `[]` | Specify additional VolumeMounts for the barman container |
| deployment.additionalVolumes | list | `[]` | Specify additional Volumes for the deployment |
| deployment.annotations | object | `{}` | Specify deployment annotations |
| deployment.extraContainers | object | `{}` | Specify sidecars for the deployment |
| deployment.imagePullSecrets | list | `[]` | Specify imagePullSecrets for the deployment |
| deployment.initContainers | list | `[]` | Init containers for the deployment. If the value is a string then it is evaluated as a template. |
| deployment.podAnnotations | object | `{}` | Specify pod annotations |
| deployment.strategy.type | string | `"RollingUpdate"` | Specify the strategy used to replace old Pods by new ones |
| image.pullPolicy | string | `"Always"` | When to pull the container image |
| image.repository | string | `"ghcr.io/basalam/barman-docker"` | Container image to deploy |
| image.tag | string | `""` | Overrides the image tag whose default is the chart version. |
| persistence.data.accessMode | string | `"ReadWriteOnce"` | Access mode for persistent storage |
| persistence.data.annotations | object | `{}` | Add annotations to backup data PVC |
| persistence.data.enabled | bool | `true` | Enable persistent storage for backup data |
| persistence.data.size | string | `"20Gi"` | Size of storage volume |
| persistence.data.storageClass | string | `""` | Storage class |
| persistence.recover.accessMode | string | `"ReadWriteOnce"` | Access mode for persistent storage |
| persistence.recover.annotations | object | `{}` | Add annotations to recovery PVC |
| persistence.recover.enabled | bool | `false` | Enable persistent storage for recovery |
| persistence.recover.size | string | `"4Gi"` | Size of storage volume |
| persistence.recover.storageClass | string | `""` | Storage class |
| prometheus.enabled | bool | `true` | Enable Prometheus integration |
| prometheus.rules.additionalLabels | list | `[]` | Additional labels for Alertmanager rules |
| prometheus.rules.enabled | bool | `false` | Enable Alertmanager rules |
| prometheus.rules.selector | list | `[]` | Selector labels for Alertmanager rules |
| prometheus.rules.spec | list | `[]` | Array of Alertmanager rules |
| prometheus.service.externalPort | int | `9780` | Prometheus exporter service external port |
| prometheus.service.internalPort | int | `9780` | Prometheus exporter service internal port |
| prometheus.service.name | string | `"barman-exporter"` | Prometheus exporter service name |
| prometheus.service.type | string | `"ClusterIP"` | Prometheus exporter service type |
| prometheus.serviceMonitor.extraLabels | object | `{}` | Labels to add to service monitor |
| prometheus.serviceMonitor.interval | string | `"30s"` | Interval at which metrics should be scraped |
| prometheus.serviceMonitor.metricRelabelings | list | `[]` | MetricRelabelConfigs to apply to samples before ingestion |
| prometheus.serviceMonitor.relabelings | list | `[]` | RelabelConfigs to apply to samples before scraping |
| rbac.create | bool | `false` | Whether to create RBAC or not |
| resources | object | `{"limits":{"memory":"256Mi"},"requests":{"cpu":"100m","memory":"128Mi"}}` | Resource limits and requests |
| secret.create | bool | `true` | Whether to create and manage the barman-pgpass-secret |
| service.annotations | object | `{}` | Service annotations |
| service.clusterIP | string | `nil` | Only for type ClusterIP |
| service.create | bool | `false` | Specify if a Service should be created |
| service.loadBalancerIP | string | `nil` | Only for type LoadBalancer |
| service.ports[0] | object | `{"name":"http","port":80,"protocol":"TCP","targetPort":"http"}` | specify targetPort |
| service.ports[0].name | string | `"http"` | specify port Name |
| service.ports[0].port | int | `80` | specify port |
| service.ports[0].protocol | string | `"TCP"` | specify port protocol |
| service.type | string | `"ClusterIP"` | Type of service |

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
