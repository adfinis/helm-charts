# kubernetes-etcd-backup

![Version: 1.6.2](https://img.shields.io/badge/Version-1.6.2-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v1.4.6](https://img.shields.io/badge/AppVersion-v1.4.6-informational?style=flat-square)

Chart for kubernetes-etcd-backup solution

**Homepage:** <https://github.com/adfinis/kubernetes-etcd-backup>

## Maintainers
This chart is maintained by [Adfinis](https://adfinis.com/?pk_campaign=github&pk_kwd=helm-charts).

## Source Code

* <https://github.com/adfinis/kubernetes-etcd-backup>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| backup.dirname | string | `"+etcd-backup-%FT%T%:z"` | Directory name of single backup |
| backup.expiretype | string | `"days"` | expiretype could be days (keep backups newer than backup.keepdays, count (keep a number of backups with backup.keepcount), never (do not expire backups, keep all of them) |
| backup.keepcount | string | `"10"` | Count retention if expiretype set to count |
| backup.keepdays | string | `"30"` | Retention period |
| backup.schedule | string | `"0 0 * * *"` | Backup schedule |
| backup.subdir | string | `"/"` | Sub directory path |
| backup.umask | string | `"0027"` | Set umask during the backup |
| etcdCertification.etcdPeerTlsName | string | `"changeme"` | etcd-peer-tls secret name |
| etcdCertification.etcdServerCaName | string | `"changeme"` | etcd-server-ca secret name |
| etcdConfiguration.endpoint | string | `"changeme"` | Etcd endpoint ip or hostname without protocol or port Example: etcd.kube-system.svc.cluster.local |
| etcdConfiguration.insecureSkipTlsVerify | bool | `false` | Skip server certificate verification Useful for scenarios where etcd nodes are external endpoints (access through etcd service in kube-system namespace) and have a different CN/SAN in the certificate . Otherwise, "failed to verify certificate: x509: certificate is valid for etcd-2, etc., not etcd.kube-system.svc.cluster.local" |
| extraVolumeMounts | list | `[]` |  |
| extraVolumes | list | `[]` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"Always"` | Image pull policy configuration |
| image.repository | string | `"ghcr.io/adfinis/kubernetes-etcd-backup"` | Repository image to use |
| image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| monitoring.additionalRules | string | `nil` | Provide custom recording or alerting rules to be deployed into the cluster. |
| monitoring.enabled | bool | `false` | Deploy PrometheusRule to be alerted in case of backup fails as decribed [here](https://github.com/adfinis/kubernetes-etcd-backup/blob/main/etcd-backup-cronjob-monitor.PrometheusRule.yaml). |
| monitoring.rules.cronjobMonitor | bool | `true` | Deploy PrometheusRule to check for cronjob fails. |
| nameOverride | string | `""` |  |
| persistence.capacity | string | `"10Gi"` | Define the storage size |
| persistence.existingClaim | string | `""` | Use an exising PVC |
| persistence.nfs.enabled | bool | `false` | Enable nfs backend storage |
| persistence.nfs.path | string | `"nfs/example/path"` | NFS server path |
| persistence.nfs.server | string | `"example.com"` | NFS server name or IP |
| persistence.provisioning.enabled | bool | `false` | Enable provisioned backend storage with default or configured storageClass |
| persistence.provisioning.storageClass | string | `""` |  |
| persistence.reclaimPolicy | string | `"Retain"` | Set reclaim policy (Retain or Delete) |
| persistence.s3.accessKey | string | `"mysuperaccesskey"` | S3 access key |
| persistence.s3.bucket | string | `"etcd-backup"` | S3 bucket name |
| persistence.s3.ca.enabled | bool | `false` |  |
| persistence.s3.ca.secretName | string | `"changeme"` |  |
| persistence.s3.enabled | bool | `false` | Enable S3 backend storage |
| persistence.s3.existingSecret | string | `""` | S3 use an existing Secret instead of creating one |
| persistence.s3.host | string | `"https://minio.local:9000"` | S3 endpoint host |
| persistence.s3.name | string | `"etcd-backup"` | S3 endpoint name |
| persistence.s3.secretKey | string | `"mysupersecretkey"` | S3 secret key |
| podAnnotations | object | `{}` | Custom pod annotations for the running pod |
| podSecurityContext.fsGroup | int | `1000` |  |
| podSecurityContext.runAsUser | int | `1000` |  |
| resources | string | `nil` |  |
| securityContext | object | `{}` |  |

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
