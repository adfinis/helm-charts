barman
======
Chart for Barman PostgreSQL Backup and Recovery Manager

Current chart version is `0.0.1`

Source code can be found [here](http://www.pgbarman.org/)



## Chart Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| barman.backupSchedule | string | `"0 4 * * *"` | Barman backup schedule |
| barman.postgresql.host | string | `"postgresql"` | Postgresql Host |
| barman.postgresql.replicationPassword | string | `"barman"` | Postgresql replication password |
| barman.postgresql.replicationUser | string | `"barman"` | Postgresql replication user |
| barman.postgresql.superUser | string | `"postgres"` | Postgresql super user |
| barman.postgresql.superUserPassword | string | `"postgres"` | Postgresql super user password |
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
