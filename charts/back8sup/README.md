# back8sup

![Version: 0.4.7](https://img.shields.io/badge/Version-0.4.7-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v0.7.9](https://img.shields.io/badge/AppVersion-v0.7.9-informational?style=flat-square)

Deploy back8sup to a Kubernetes Cluster

**Homepage:** <https://github.com/adfinis/back8sup>

## Maintainers
This chart is maintained by [Adfinis](https://adfinis.com/?pk_campaign=github&pk_kwd=helm-charts).

## Source Code

* <https://github.com/adfinis/back8sup>
* <https://github.com/adfinis/helm-charts/tree/main/charts/back8sup>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | specifies the affinity to be used |
| configMaps."config.yaml" | string | example that backups pvcs, and pvs globally and deployments, configmaps, and secrets in the default namespace | specifies the config.yaml to be used |
| cronjob.concurrencyPolicy | string | `""` | specifies the concurrencyPolicy of the cronjob |
| cronjob.environment[0].name | string | `"API_ENDPOINT"` |  |
| cronjob.environment[0].value | string | `"https://kubernetes.default.svc.cluster.local:443"` |  |
| cronjob.environment[1].name | string | `"CA_CERT"` |  |
| cronjob.environment[1].value | string | `"/var/run/secrets/kubernetes.io/serviceaccount/ca.crt"` |  |
| cronjob.environment[2].name | string | `"TOKEN_FILE"` |  |
| cronjob.environment[2].value | string | `"/var/run/secrets/kubernetes.io/serviceaccount/token"` |  |
| cronjob.environment[3].name | string | `"CONFIGMAP_PATH"` |  |
| cronjob.environment[3].value | string | `"/etc/config.yaml"` |  |
| cronjob.environment[4].name | string | `"EXPORT_FORMAT"` |  |
| cronjob.environment[4].value | string | `"yaml"` |  |
| cronjob.environment[5].name | string | `"DST_FOLDER"` |  |
| cronjob.environment[5].value | string | `"/mnt/back8sup"` |  |
| cronjob.environment[6].name | string | `"GENERATIONS"` |  |
| cronjob.environment[6].value | string | `"30"` |  |
| cronjob.failedJobsHistoryLimit | string | `""` | specifies the failedJobsHistoryLimit of the cronjob |
| cronjob.schedule | string | `"0 1 * * *"` | on which schedule the cronjob gets run |
| cronjob.successfulJobsHistoryLimit | string | `""` | specifies the successfulJobsHistoryLimit of the cronjob |
| fullnameOverride | string | `""` | specifies the full name override to be used for helm |
| image.pullPolicy | string | `"IfNotPresent"` | set the image pullPolicy |
| image.repository | string | `"ghcr.io/adfinis/back8sup"` | set the image repository |
| image.tag | string | `""` | set the tag of the image Specify a tag to override which version of timed to deploy. If no tag is specified the appVersion from Chart.yaml is used as tag. |
| imagePullSecrets | list | `[]` | specifies the image pull secrets to be used |
| nameOverride | string | `""` | specifies the name override to be used for helm |
| nodeSelector | object | `{}` | specifies the nodeSelector to be used |
| persistence.enabled | bool | `true` | specifies if persistence is enabled or not |
| persistence.mountPath | string | `"/mnt/back8sup"` | specifies where to mount the PV |
| persistence.size | string | `"10Gi"` | specifies which size the PVC should request |
| podAnnotations | object | `{}` | specifies the Pod Annotations to be set |
| podSecurityContext | object | `{"fsGroup":65534}` | specifies the Pod Security Context to be set |
| rbacCreate | bool | `true` | wheter the rolebindings and roles should be created |
| replicaCount | int | `1` | specifies the replica count of the pods |
| resources | object | `{}` | specifies the resources to be used |
| securityContext | object | `{}` | specifies the Security Context to be set |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| tolerations | list | `[]` | specifies the tolerations to be used |

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