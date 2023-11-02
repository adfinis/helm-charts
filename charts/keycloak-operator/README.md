# keycloak-operator

![Version: 0.2.4](https://img.shields.io/badge/Version-0.2.4-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 22.0.5](https://img.shields.io/badge/AppVersion-22.0.5-informational?style=flat-square)

Deploy Keycloak Operator and Keycloak

**Homepage:** <https://www.keycloak.org>

## Maintainers
This chart is maintained by [Adfinis](https://adfinis.com/?pk_campaign=github&pk_kwd=helm-charts).

## Source Code

* <https://github.com/keycloak/keycloak-k8s-resources>
* <https://github.com/adfinis/helm-charts/tree/main/charts/keycloak-operator>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| fullnameOverride | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| keycloak.additionalOptions | string | `nil` | Configuration of the Keycloak server expressed as a keys and values that can be either direct values or references to secrets. |
| keycloak.db.database | string | `nil` | Sets the database name of the default JDBC URL of the chosen vendor. If the `url` option is set, this option is ignored. |
| keycloak.db.host | string | `nil` | Sets the hostname of the default JDBC URL of the chosen vendor. If the `url` option is set, this option is ignored. |
| keycloak.db.passwordSecret | string | `nil` | The reference to a secret holding the password of the database user. |
| keycloak.db.poolInitialSize | string | `nil` | The initial size of the connection pool. |
| keycloak.db.poolMaxSize | string | `nil` | The maximum size of the connection pool. |
| keycloak.db.poolMinSize | string | `nil` | The minimal size of the connection pool. |
| keycloak.db.port | string | `nil` | Sets the port of the default JDBC URL of the chosen vendor. If the `url` option is set, this option is ignored. |
| keycloak.db.schema | string | `nil` | The database schema to be used. |
| keycloak.db.url | string | `nil` | The full database JDBC URL. If not provided, a default URL is set based on the selected database vendor. |
| keycloak.db.usernameSecret | string | `nil` | The reference to a secret holding the username of the database user. |
| keycloak.db.vendor | string | `nil` | The database vendor. |
| keycloak.enabled | bool | `false` | Enable deploying a bundled keycloak with the operator |
| keycloak.features | object | see [Keycloak docs](https://www.keycloak.org/server/features) | Configure Keycloak features |
| keycloak.features.disabled | list | `[]` | Disabled Keycloak features |
| keycloak.features.enabled | list | `[]` | Enabled Keycloak features |
| keycloak.hostname.admin | string | `nil` | The hostname for accessing the administration console. |
| keycloak.hostname.adminUrl | string | `nil` | Set the base URL for accessing the administration console. |
| keycloak.hostname.hostname | string | Disabled if not set. | Hostname for the Keycloak server. |
| keycloak.hostname.strict | bool | `false` | Disables dynamically resolving the hostname from request headers |
| keycloak.hostname.strictBackchannel | bool | `true` | By default backchannel URLs are dynamically resolved from request headers to allow internal and external applications. |
| keycloak.http.httpEnabled | bool | `true` | Enable a HTTP listener |
| keycloak.http.httpPort | string | `nil` | The used HTTP port |
| keycloak.http.httpsPort | string | `nil` | The used HTTPS port |
| keycloak.http.tlsSecret | string | `nil` | A secret containing the TLS configuration for HTTPS. |
| keycloak.image.repository | string | `""` | Overrides the operator.keycloakImage.image value whose default is quay.io/keycloak/keycloak |
| keycloak.image.tag | string | `""` | Overrides the operator.keycloakImage.tag value whose default is the chart appVersion. |
| keycloak.imagePullSecrets | string | `nil` | Secret(s) that might be used when pulling an image from a private container image registry or repository. |
| keycloak.ingress.annotations | list | `[]` | Annotations for the Ingress |
| keycloak.ingress.className | string | `""` | Ingress class name |
| keycloak.ingress.enabled | bool | `true` | The deployment is, by default, exposed through a basic ingress. |
| keycloak.instances | int | `1` | Number of Keycloak instances in HA mode. |
| keycloak.realmimport.enabled | bool | `false` | Deploy realmimport resources |
| keycloak.realmimport.realms | list | `[]` | A list of realms to configure using the realmimport CRD. |
| keycloak.transaction.xaEnabled | bool | `false` | Determine whether Keycloak should use a non-XA datasource. |
| keycloak.unsupported.podTemplate | string | `nil` | You can configure values that will be merged with the one configured by default by the operator. |
| nameOverride | string | `""` |  |
| operator.affinity | object | `{}` | Affinity for Operator Deployment. |
| operator.config.keycloakImage.repository | string | `"quay.io/keycloak/keycloak"` | Default keycloak image to use if non was specified in the Keycloak CRD. |
| operator.config.keycloakImage.tag | string | `""` |  |
| operator.image.pullPolicy | string | `"IfNotPresent"` | Pull policy for Operator. |
| operator.image.repository | string | `"quay.io/keycloak/keycloak-operator"` | Operator Image source. |
| operator.image.tag | string | `""` |  |
| operator.nodeSelector | object | `{}` | Node selector for Operator Deployment. |
| operator.podAnnotations | object | `{}` | Annotations to set on the Operator Deployment. |
| operator.podSecurityContext | object | `{}` | Pod security group configuration for Operator Deployment. |
| operator.podTopologySpreadConstraints | object | `{}` | Pod Topology Spread Constraints for Operator Deployment |
| operator.replicaCount | int | `1` | Number or oeprator pods to start. |
| operator.resources | object | `{}` | Resource requests and limits for Operator Deployment. |
| operator.securityContext | object | `{}` | Security context for Operator Deployment. |
| operator.service.enabled | bool | `true` | Enable creation of Service |
| operator.service.port | int | `8080` | Service port for Operator. |
| operator.service.type | string | `"ClusterIP"` | Service type for Operator. |
| operator.serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| operator.serviceAccount.create | bool | `true` | Specifies whether a service account should be created. |
| operator.serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| operator.tolerations | list | `[]` | Tolerations for Operator Deployment. |

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
