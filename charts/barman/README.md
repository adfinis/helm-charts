barman
======
Chart for Barman PostgreSQL Backup and Recovery Manager

Current chart version is `0.0.7`


**Homepage:** <http://www.pgbarman.org/>


## Maintainers
This chart is maintained by [Adfinis](https://adfinis.com/?pk_campaign=github&pk_kwd=helm-charts).


## Source Code

* <https://github.com/2ndquadrant-it/barman>
* <https://github.com/ubc/barman-docker>
* <https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/barman>


## Chart Values


| Key | Type | Default | Description |
|-----|------|---------|-------------|
| `barman.backupDir` | string | `"/var/lib/barman"` | Barman home directory |
| `barman.backupMethod` | string | `"postgres"` | Barman backup method |
| `barman.backupOptions` | string | `"concurrent_backup"` | Barman backup options |
| `barman.backupSchedule` | string | `"0 4 * * *"` | Barman backup schedule |
| `barman.backups[0].backupMethod` | string | `"postgres"` | Barman backup method |
| `barman.backups[0].databaseSlotName` | string | `"barman"` | Database slot name to be created/used |
| `barman.backups[0].lastBackupMaximumAge` | string | `"1 day"` | Barman last backup maximum age |
| `barman.backups[0].namespace` | string | `"postgresql"` | namespace where postgresql is deployed |
| `barman.backups[0].postgresql.host` | string | `"postgresql"` | Postgresql host |
| `barman.backups[0].postgresql.port` | int | `5432` | Postgresql port |
| `barman.backups[0].postgresql.replicationPassword` | string | `"barman"` | Postgresql replication password |
| `barman.backups[0].postgresql.replicationUser` | string | `"barman"` | Postgresql replication user |
| `barman.backups[0].postgresql.superUser` | string | `"postgres"` | Postgresql super user |
| `barman.backups[0].postgresql.superUserDatabase` | string | `"postgres"` | Postgresql super user database |
| `barman.backups[0].postgresql.superUserPassword` | string | `"postgres"` | Postgresql super user password |
| `barman.backups[0].retentionPolicy` | string | `"RECOVERY WINDOW of 1 MONTH"` | Barman retention policy |
| `barman.backups[0].serviceaccount` | string | `"postgresql"` | service account of the postgresql deployment |
| `barman.barmanUser` | string | `"barman"` | Barman user |
| `barman.compression` | string | `"gzip"` | Barman backup compression |
| `barman.databaseSlotName` | string | `"barman"` | Database slot name to be created/used |
| `barman.lastBackupMaximumAge` | string | `"1 day"` | Barman last backup maximum age |
| `barman.retentionPolicy` | string | `"RECOVERY WINDOW of 1 MONTH"` | Barman retention policy |
| `image.pullPolicy` | string | `"Always"` | Image pull policy |
| `image.repository` | string | `"ubcctlt/barman"` | Image repository |
| `image.tag` | string | `"latest"` | Image tag |
| `persistence.data.accessMode` | string | `"ReadWriteOnce"` | Access mode for persistent storage |
| `persistence.data.enabled` | bool | `true` | Enable persistent storage for backup data |
| `persistence.data.size` | string | `"20Gi"` | Size of storage volume |
| `persistence.data.storageClass` | string | `""` | Storage class |
| `persistence.recover.accessMode` | string | `"ReadWriteOnce"` | Access mode for persistent storage |
| `persistence.recover.enabled` | bool | `false` | Enable persistent storage for recovery |
| `persistence.recover.size` | string | `"4Gi"` | Size of storage volume |
| `persistence.recover.storageClass` | string | `""` | Storage class |
| `prometheus.enabled` | bool | `true` | Enable Prometheus integration |
| `prometheus.service.externalPort` | int | `9780` | Prometheus exporter service external port |
| `prometheus.service.internalPort` | int | `9780` | Prometheus exporter service internal port |
| `prometheus.service.name` | string | `"barman-exporter"` | Prometheus exporter service name |
| `prometheus.service.type` | string | `"ClusterIP"` | Prometheus exporter service type |
| `prometheus.serviceMonitor.extraLabels` | object | `{}` | Labels to add to service monitor |
| `prometheus.serviceMonitor.interval` | string | `"30s"` | Interval at which metrics should be scraped |
| `prometheus.serviceMonitor.metricRelabelings` | list | `[]` | MetricRelabelConfigs to apply to samples before ingestion |
| `prometheus.serviceMonitor.relabelings` | list | `[]` | RelabelConfigs to apply to samples before scraping |
| `rbac.create` | bool | `false` | Whether to create RBAC or not |
| `resources` | object | `{}` | Resource limits and requests |

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
