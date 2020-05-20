barman
======
Chart for Barman PostgreSQL Backup and Recovery Manager

Current chart version is `0.0.2`

Source code can be found [here](http://www.pgbarman.org/)



## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| barman.backupMethod | string | `"postgres"` | Backup method |
| barman.backupSchedule | string | `"0 4 * * *"` | Barman backup schedule |
| barman.databaseSlotName | string | `"barman"` | Database slot name to be created/used |
| barman.lastBackupMaximumAge | string | `"1 day"` | Barman last backup maximum age |
| barman.postgresql.host | string | `"postgresql"` | Postgresql Host |
| barman.postgresql.replicationPassword | string | `"barman"` | Postgresql replication password |
| barman.postgresql.replicationUser | string | `"barman"` | Postgresql replication user |
| barman.postgresql.superUser | string | `"postgres"` | Postgresql super user |
| barman.postgresql.superUserDatabase | string | `"postgres"` |  |
| barman.postgresql.superUserPassword | string | `"postgres"` | Postgresql super user password |
| barman.retentionPolicy | string | `"RECOVERY WINDOW of 1 MONTH"` | Barman retention policy |
| image.pullPolicy | string | `"Always"` | Image pull policy |
| image.repository | string | `"ubcctlt/barman"` | Image repository |
| image.tag | string | `"latest"` | Image tag |
| persistence.data.accessMode | string | `"ReadWriteOnce"` | Access mode for persistent storage |
| persistence.data.enabled | bool | `true` | Enable persistent storage for backup data |
| persistence.data.size | string | `"20Gi"` | Size of storage volume |
| persistence.data.storageClass | string | `""` | Storage class |
| persistence.recover.accessMode | string | `"ReadWriteOnce"` | Access mode for persistent storage |
| persistence.recover.enabled | bool | `false` | Enable persistent storage for recovery |
| persistence.recover.size | string | `"4Gi"` | Size of storage volume |
| persistence.recover.storageClass | string | `""` | Storage class |
| resources | object | `{}` | Resource limits and requests |
