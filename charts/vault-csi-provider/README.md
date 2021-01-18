# vault-csi-provider

![Version: 0.2.0](https://img.shields.io/badge/Version-0.2.0-informational?style=flat-square) ![AppVersion: 0.0.6](https://img.shields.io/badge/AppVersion-0.0.6-informational?style=flat-square)

A helm chart to install the vault secrets-store-csi-driver

**Homepage:** <https://github.com/adfinis-sygroup/helm-charts/blob/master/charts/vault-csi-provider/README.md>

## Maintainers
This chart is maintained by [Adfinis](https://adfinis.com/?pk_campaign=github&pk_kwd=helm-charts).

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://raw.githubusercontent.com/kubernetes-sigs/secrets-store-csi-driver/master/charts | secrets-store-csi-driver | 0.0.18 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| csiProviderPath | string | `"/etc/kubernetes/secrets-store-csi-providers"` | set the path where the secrets-store-csi-provider gets installed on the node |
| image | object | `{"pullPolicy":"IfNotPresent","repository":"hashicorp/secrets-store-csi-driver-provider-vault","tag":"0.0.6"}` | specifies the image to use for the secrets-store-csi-driver |
| resources | object | `{}` | Set the limits and requests on vault csi-driver-provider pod resources |
| secretsStoreCsiDriver.enabled | bool | `true` | specifies wether or not the secrets-store-csi-driver dependency gets installed |

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
