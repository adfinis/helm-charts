# openshift-etcd-backup

![Version: 1.8.12](https://img.shields.io/badge/Version-1.8.12-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v1.8.12](https://img.shields.io/badge/AppVersion-v1.8.12-informational?style=flat-square)

Chart for openshift-etcd-backup solution

**Homepage:** <https://github.com/adfinis/openshift-etcd-backup>

## Maintainers
This chart is maintained by [Adfinis](https://adfinis.com/?pk_campaign=github&pk_kwd=helm-charts).

## Source Code

* <https://github.com/adfinis/openshift-etcd-backup>
* <https://github.com/adfinis/helm-charts/tree/main/charts/openshift-etcd-backup>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| annotations | object | `{}` |  |
| backup.dirname | string | `"+etcd-backup-%FT%T%:z"` | Directory name of single backup |
| backup.expiretype | string | `"days"` | expiretype could be days (keep backups newer than backup.keepdays, count (keep a number of backups with backup.keepcount), never (do not expire backups, keep all of them) |
| backup.keepcount | string | `"10"` | Count retention if expiretype set to count |
| backup.keepdays | string | `"30"` | Retention period |
| backup.schedule | string | `"0 0 * * *"` | Backup schedule |
| backup.subdir | string | `"/"` | Sub directory path |
| backup.umask | string | `"0027"` | Set umask during the backup |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"Always"` | Image pull policy configuration |
| image.repository | string | `"ghcr.io/adfinis/openshift-etcd-backup"` | Repository image to use |
| image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| monitoring.additionalRules | string | `nil` | Provide custom recording or alerting rules to be deployed into the cluster. |
| monitoring.enabled | bool | `false` | Deploy PrometheusRule to be alerted in case of backup fails as decribed [here](https://github.com/adfinis/openshift-etcd-backup/blob/main/etcd-backup-cronjob-monitor.PrometheusRule.yaml). Be sure to to have monitoring for user defined projects enabled as [described in the upstream documentation](https://docs.openshift.com/container-platform/4.6/monitoring/enabling-monitoring-for-user-defined-projects.html). |
| monitoring.rules.cronjobMonitor | bool | `true` | Deploy PrometheusRule to check for cronjob fails. |
| nameOverride | string | `""` |  |
| nodeSelector."node-role.kubernetes.io/master" | string | `""` | The backup job should run on masters as etcd runs on them |
| persistence.hostPath.enabled | bool | `true` | Enable hostPath |
| persistence.hostPath.path | string | `"/mnt/etcd-backups"` | hostPath existing path on host |
| persistence.nfs.enabled | bool | `false` | Enable nfs backend storage |
| persistence.nfs.path | string | `"/etcd-backups"` | NFS server path |
| persistence.nfs.server | string | `"example.com"` | NFS server name or IP |
| persistence.provisioning.capacity | string | `"10Gi"` | Define the storage size |
| persistence.provisioning.enabled | bool | `false` | Enable provisioned backend storage with default or configured storageClass |
| persistence.provisioning.storageClass | string | `""` |  |
| persistence.s3.accessKey | string | `"mysuperaccesskey"` | S3 access key |
| persistence.s3.bucket | string | `"etcd-backup"` | S3 bucket name |
| persistence.s3.ca | object | `{"enabled":false}` | Inject OpenShift CA |
| persistence.s3.enabled | bool | `false` | Enable S3 backend storage |
| persistence.s3.existingSecret | string | `""` | S3 use an existing Secret instead of creating one |
| persistence.s3.host | string | `"https://minio.local:9000"` | S3 endpoint host |
| persistence.s3.name | string | `"etcd-backup"` | S3 endpoint name |
| persistence.s3.secretKey | string | `"mysupersecretkey"` | S3 secret key |
| podSecurityContext | object | `{}` | Configure SecurityContext of the pod started by the job |
| resources | object | `{}` |  |
| securityContext.privileged | bool | `true` | Run pod as privileged |
| securityContext.runAsGroup | int | `0` | Set group ID |
| securityContext.runAsUser | int | `0` | Set user ID |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| tolerations[0] | object | `{"effect":"NoSchedule","key":"node-role.kubernetes.io/master"}` | Allow jobs running on masters |

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
