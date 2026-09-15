# bbook

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.1.2](https://img.shields.io/badge/AppVersion-0.1.2-informational?style=flat-square)

Adfinis contact address book, syncing contacts from Zoho CRM to a searchable web page and a read-only CardDAV endpoint

**Homepage:** <https://github.com/adfinis/bbook>

## Maintainers
This chart is maintained by [Adfinis](https://adfinis.com/?pk_campaign=github&pk_kwd=helm-charts).

## Source Code

* <https://github.com/adfinis/bbook>

## Requirements

Kubernetes: `>= 1.21.0`

| Repository | Name | Version |
|------------|------|---------|
| oci://registry-1.docker.io/cloudpirates | postgresql(postgres) | ~0.19.5 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Pod affinity configuration |
| config.hostname | string | `"bbook.local"` | hostname where bbook is reachable (BBOOK_HOSTNAME), usually the ingress host |
| config.logFormat | string | `"json"` | log format (text|json) |
| config.logLevel | string | `"info"` | log level (debug|info|warn|error) |
| config.oidc.clientID | string | `"bbook"` | OIDC client ID |
| config.oidc.clientSecret | string | `""` | OIDC client secret (stored in the Secret) |
| config.oidc.discoveryURL | string | `""` | OIDC discovery URL as seen by bbook, defaults to issuerURL |
| config.oidc.insecureSkipIssuerValidation | bool | `false` | skip validation of the issuer in the discovery document |
| config.oidc.issuerURL | string | `""` | OIDC issuer URL as seen by the browser |
| config.oidc.redirectURL | string | `""` | OIDC redirect URL, defaults to <scheme>://<hostname>/auth/callback |
| config.oidc.requiredGroup | string | `""` | group required to access bbook (needs a groups claim in the ID token). Empty disables the app-side check, leaving access control to the IdP. |
| config.port | string | `""` | external port (BBOOK_PORT), leave empty for the scheme default |
| config.scheme | string | `"https"` | scheme used to reach bbook externally (BBOOK_SCHEME) |
| config.sessionSecret | string | `""` | session cookie secret, at least 32 characters (stored in the Secret) |
| config.zoho.accountsURL | string | `"https://accounts.zoho.eu"` | Zoho accounts URL |
| config.zoho.baseURL | string | `"https://www.zohoapis.eu"` | Zoho API base URL |
| config.zoho.clientID | string | `""` | Zoho OAuth client ID (stored in the Secret) |
| config.zoho.clientSecret | string | `""` | Zoho OAuth client secret (stored in the Secret) |
| config.zoho.refreshToken | string | `""` | Zoho OAuth refresh token (stored in the Secret) |
| config.zoho.syncEnabled | bool | `false` | enable the Zoho CRM sync job |
| existingSecret | string | `""` | use an existing Secret instead of creating one. Must contain POSTGRES_PASSWORD, OIDC_CLIENT_SECRET, SESSION_SECRET and, when the Zoho sync is enabled, ZOHO_CLIENT_ID, ZOHO_CLIENT_SECRET and ZOHO_REFRESH_TOKEN. |
| externalDatabase | object | `{"connectionStringParams":"","database":"bbook","host":"","password":"","username":"bbook"}` | external database configuration, used when postgresql.enabled is false |
| externalDatabase.connectionStringParams | string | `""` | extra connection string parameters, e.g. "?sslmode=require" |
| externalDatabase.database | string | `"bbook"` | database name |
| externalDatabase.host | string | `""` | database host, may include a port (host:5432) |
| externalDatabase.password | string | `""` | database password (stored in the Secret) |
| externalDatabase.username | string | `"bbook"` | database user name |
| extraObjects | list | `[]` | extra Kubernetes objects deployed with the chart, rendered through tpl. Useful for e.g. an ExternalSecret + SecretStore providing the existingSecret. |
| fullnameOverride | string | `""` | fullnameOverride configuration |
| image.pullPolicy | string | `"IfNotPresent"` | pullPolicy to use |
| image.repository | string | `"ghcr.io/adfinis/bbook"` | repository where the image is located |
| image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| imagePullSecrets | list | `[]` | imagePullSecrets for pulling the image |
| ingress.annotations | object | `{}` | ingress annotations |
| ingress.className | string | `""` | which ingressClassName to use |
| ingress.enabled | bool | `false` | enable ingress for bbook |
| ingress.hosts | list | `[{"host":"bbook.local","paths":[{"path":"/","pathType":"ImplementationSpecific"}]}]` | ingress hostnames |
| ingress.tls | list | `[]` | ingress TLS configuration |
| nameOverride | string | `""` | nameOverride configuration |
| nodeSelector | object | `{}` | Pod nodeSelector configuration |
| podAnnotations | object | `{}` | Pod annotations to add |
| podSecurityContext | object | `{}` | Pod securityContext configuration |
| postgresql.auth.database | string | `"bbook"` | PostgreSQL database name |
| postgresql.auth.password | string | `""` | PostgreSQL password (stored in the Secret) |
| postgresql.auth.username | string | `"bbook"` | PostgreSQL user name |
| postgresql.enabled | bool | `false` | deploy the bundled PostgreSQL (CloudPirates postgres chart). If disabled, externalDatabase is used instead. |
| postgresql.nameOverride | string | `"postgresql"` |  |
| replicaCount | int | `1` | number of replicas to launch. Note: every replica runs its own Zoho sync job and in-memory search index, so more than one replica duplicates the sync work against Zoho CRM. |
| resources | object | `{}` | Pod resources to define |
| securityContext | object | `{}` | Container securityContext configuration |
| service.port | int | `8081` | port where the service listens to |
| service.type | string | `"ClusterIP"` | service type of the application |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| tolerations | list | `[]` | Pod tolerations configuration |

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
