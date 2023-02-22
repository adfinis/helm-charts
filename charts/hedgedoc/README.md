# hedgedoc

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.9.7](https://img.shields.io/badge/AppVersion-1.9.7-informational?style=flat-square)

A Helm chart for Kubernetes

## Maintainers
This chart is maintained by [Adfinis](https://adfinis.com/?pk_campaign=github&pk_kwd=helm-charts).

## Source Code

* <https://github.com/hedgedoc/hedgedoc>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| fullnameOverride | string | `""` |  |
| hedgedoc.env[0].NODE_ENV | string | `""` |  |
| hedgedoc.env[100].CMD_S3_SECRET_ACCESS_KEY | string | `""` |  |
| hedgedoc.env[101].CMD_S3_REGION | string | `""` |  |
| hedgedoc.env[102].CMD_S3_BUCKET | string | `""` |  |
| hedgedoc.env[103]."CMD_S3_ENDPOINT ENV" | string | `""` |  |
| hedgedoc.env[104].CMD_S3_FOLDER | string | `""` |  |
| hedgedoc.env[105].CMD_S3_PUBLIC_FILES | string | `""` |  |
| hedgedoc.env[106].CMD_AZURE_CONNECTION_STRING | string | `""` |  |
| hedgedoc.env[107].CMD_AZURE_CONTAINER | string | `""` |  |
| hedgedoc.env[108].CMD_IMGUR_CLIENTID | string | `""` |  |
| hedgedoc.env[109].CMD_MINIO_ACCESS_KEY | string | `""` |  |
| hedgedoc.env[10].CMD_LOGLEVEL | string | `""` |  |
| hedgedoc.env[110].CMD_MINIO_SECRET_KEY | string | `""` |  |
| hedgedoc.env[111].CMD_MINIO_ENDPOINT | string | `""` |  |
| hedgedoc.env[112].CMD_MINIO_PORT | string | `""` |  |
| hedgedoc.env[113].CMD_MINIO_SECURE | string | `""` |  |
| hedgedoc.env[114].CMD_LUTIM_URL | string | `""` |  |
| hedgedoc.env[11].CMD_FORBIDDEN_NOTE_IDS | string | `""` |  |
| hedgedoc.env[12].CMD_IMAGE_UPLOAD_TYPE | string | `""` |  |
| hedgedoc.env[13].CMD_SOURCE_URL | string | `""` |  |
| hedgedoc.env[14].CMD_TOOBUSY_LAG | string | `""` |  |
| hedgedoc.env[15].CMD_DOMAIN | string | `""` |  |
| hedgedoc.env[16].CMD_URL_PATH | string | `""` |  |
| hedgedoc.env[17].CMD_HOST | string | `""` |  |
| hedgedoc.env[18].CMD_PORT | string | `""` |  |
| hedgedoc.env[19].CMD_PATH | string | `""` |  |
| hedgedoc.env[1].DEBUG | string | `""` |  |
| hedgedoc.env[20].CMD_PROTOCOL_USESSL | string | `""` |  |
| hedgedoc.env[21].CMD_URL_ADDPORT | string | `""` |  |
| hedgedoc.env[22].CMD_ALLOW_ORIGIN | string | `""` |  |
| hedgedoc.env[23].CMD_HSTS_ENABLE | string | `""` |  |
| hedgedoc.env[24].CMD_HSTS_INCLUDE_SUBDOMAINS | string | `""` |  |
| hedgedoc.env[25].CMD_HSTS_MAX_AGE | string | `""` |  |
| hedgedoc.env[26].CMD_HSTS_PRELOAD | string | `""` |  |
| hedgedoc.env[27].CMD_CSP_ENABLE | string | `""` |  |
| hedgedoc.env[28].CMD_CSP_ADD_DISQUS | string | `""` |  |
| hedgedoc.env[29].CMD_CSP_ADD_GOOGLE_ANALYTICS | string | `""` |  |
| hedgedoc.env[2].CMD_CONFIG_FILE | string | `""` |  |
| hedgedoc.env[30].CMD_CSP_REPORTURI | string | `""` |  |
| hedgedoc.env[31].CMD_CSP_ALLOW_FRAMING | string | `""` |  |
| hedgedoc.env[32].CMD_CSP_ALLOW_PDF_EMBED | string | `""` |  |
| hedgedoc.env[33].CMD_COOKIE_POLICY | string | `""` |  |
| hedgedoc.env[34].CMD_ALLOW_GRAVATAR | string | `""` |  |
| hedgedoc.env[35].CMD_ALLOW_ANONYMOUS | string | `""` |  |
| hedgedoc.env[36].CMD_ALLOW_ANONYMOUS_EDITS | string | `""` |  |
| hedgedoc.env[37].CMD_ALLOW_FREEURL | string | `""` |  |
| hedgedoc.env[38].CMD_REQUIRE_FREEURL_AUTHENTICATION | string | `""` |  |
| hedgedoc.env[39].CMD_DEFAULT_PERMISSION | string | `""` |  |
| hedgedoc.env[3].CMD_DB_USERNAME | string | `""` |  |
| hedgedoc.env[40].CMD_SESSION_LIFE | string | `""` |  |
| hedgedoc.env[41].CMD_SESSION_SECRET | string | `""` |  |
| hedgedoc.env[42].CMD_EMAIL | string | `""` |  |
| hedgedoc.env[43].CMD_ALLOW_EMAIL_REGISTER | string | `""` |  |
| hedgedoc.env[44].CMD_DROPBOX_CLIENTID | string | `""` |  |
| hedgedoc.env[45].CMD_DROPBOX_CLIENTSECRET | string | `""` |  |
| hedgedoc.env[46].CMD_FACEBOOK_CLIENTID | string | `""` |  |
| hedgedoc.env[47].CMD_FACEBOOK_CLIENTSECRET | string | `""` |  |
| hedgedoc.env[48].CMD_GITHUB_CLIENTID | string | `""` |  |
| hedgedoc.env[49].CMD_GITHUB_CLIENTSECRET | string | `""` |  |
| hedgedoc.env[4].CMD_DB_PASSWORD | string | `""` |  |
| hedgedoc.env[50].CMD_GITLAB_SCOPE | string | `""` |  |
| hedgedoc.env[51].CMD_GITLAB_BASEURL | string | `""` |  |
| hedgedoc.env[52].CMD_GITLAB_CLIENTID | string | `""` |  |
| hedgedoc.env[53].CMD_GITLAB_CLIENTSECRET | string | `""` |  |
| hedgedoc.env[54].CMD_GITLAB_VERSION | string | `""` |  |
| hedgedoc.env[55].CMD_GOOGLE_CLIENTID | string | `""` |  |
| hedgedoc.env[56].CMD_GOOGLE_CLIENTSECRET | string | `""` |  |
| hedgedoc.env[57].CMD_GOOGLE_HOSTEDDOMAIN | string | `""` |  |
| hedgedoc.env[58].CMD_LDAP_URL | string | `""` |  |
| hedgedoc.env[59].CMD_LDAP_BINDDN | string | `""` |  |
| hedgedoc.env[5].CMD_DB_DATABASE | string | `""` |  |
| hedgedoc.env[60].CMD_LDAP_BINDCREDENTIALS | string | `""` |  |
| hedgedoc.env[61].CMD_LDAP_SEARCHBASE | string | `""` |  |
| hedgedoc.env[62].CMD_LDAP_SEARCHFILTER | string | `""` |  |
| hedgedoc.env[63].CMD_LDAP_SEARCHATTRIBUTES | string | `""` |  |
| hedgedoc.env[64].CMD_LDAP_USERIDFIELD | string | `""` |  |
| hedgedoc.env[65].CMD_LDAP_USERNAMEFIELD | string | `""` |  |
| hedgedoc.env[66].CMD_LDAP_TLS_CA | string | `""` |  |
| hedgedoc.env[67].CMD_LDAP_PROVIDERNAME | string | `""` |  |
| hedgedoc.env[68].CMD_MATTERMOST_BASEURL | string | `""` |  |
| hedgedoc.env[69].CMD_MATTERMOST_CLIENTID | string | `""` |  |
| hedgedoc.env[6].CMD_DB_HOST | string | `""` |  |
| hedgedoc.env[70].CMD_MATTERMOST_CLIENTSECRET | string | `""` |  |
| hedgedoc.env[71].CMD_OAUTH2_USER_PROFILE_URL | string | `""` |  |
| hedgedoc.env[72].CMD_OAUTH2_USER_PROFILE_USERNAME_ATTR | string | `""` |  |
| hedgedoc.env[73].CMD_OAUTH2_USER_PROFILE_DISPLAY_NAME_ATTR | string | `""` |  |
| hedgedoc.env[74].CMD_OAUTH2_USER_PROFILE_EMAIL_ATTR | string | `""` |  |
| hedgedoc.env[75].CMD_OAUTH2_USER_PROFILE_ID_ATTR | string | `""` |  |
| hedgedoc.env[76].CMD_OAUTH2_TOKEN_URL | string | `""` |  |
| hedgedoc.env[77].CMD_OAUTH2_AUTHORIZATION_URL | string | `""` |  |
| hedgedoc.env[78].CMD_OAUTH2_CLIENT_ID | string | `""` |  |
| hedgedoc.env[79].CMD_OAUTH2_CLIENT_SECRET | string | `""` |  |
| hedgedoc.env[7].CMD_DB_PORT | string | `""` |  |
| hedgedoc.env[80].CMD_OAUTH2_PROVIDERNAME | string | `""` |  |
| hedgedoc.env[81].CMD_OAUTH2_SCOPE | string | `""` |  |
| hedgedoc.env[82].CMD_OAUTH2_ROLES_CLAIM | string | `""` |  |
| hedgedoc.env[83].CMD_OAUTH2_ACCESS_ROLE | string | `""` |  |
| hedgedoc.env[84].CMD_SAML_IDPSSOURL | string | `""` |  |
| hedgedoc.env[85].CMD_SAML_IDPCERT | string | `""` |  |
| hedgedoc.env[86].CMD_SAML_CLIENTCERT | string | `""` |  |
| hedgedoc.env[87].CMD_SAML_ISSUER | string | `""` |  |
| hedgedoc.env[88].CMD_SAML_DISABLEREQUESTEDAUTHNCONTEXT | string | `""` |  |
| hedgedoc.env[89].CMD_SAML_IDENTIFIERFORMAT | string | `""` |  |
| hedgedoc.env[8].CMD_DB_DIALECT | string | `""` |  |
| hedgedoc.env[90].CMD_SAML_GROUPATTRIBUTE | string | `""` |  |
| hedgedoc.env[91].CMD_SAML_REQUIREDGROUPS | string | `""` |  |
| hedgedoc.env[92].CMD_SAML_EXTERNALGROUPS | string | `""` |  |
| hedgedoc.env[93].CMD_SAML_ATTRIBUTE_ID | string | `""` |  |
| hedgedoc.env[94].CMD_SAML_ATTRIBUTE_USERNAME | string | `""` |  |
| hedgedoc.env[95].CMD_SAML_ATTRIBUTE_EMAIL | string | `""` |  |
| hedgedoc.env[96].CMD_SAML_PROVIDERNAME | string | `""` |  |
| hedgedoc.env[97].CMD_TWITTER_CONSUMERKEY | string | `""` |  |
| hedgedoc.env[98].CMD_TWITTER_CONSUMERSECRET | string | `""` |  |
| hedgedoc.env[99].CMD_S3_ACCESS_KEY_ID | string | `""` |  |
| hedgedoc.env[9].CMD_DB_URL | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"quay.io/hedgedoc/hedgedoc"` |  |
| image.tag | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"chart-example.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| ingress.tls | list | `[]` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| service.port.port | int | `3000` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| tolerations | list | `[]` |  |

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
