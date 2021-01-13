# csi-secret-provider-class

![Version: 0.1.1](https://img.shields.io/badge/Version-0.1.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.1.0](https://img.shields.io/badge/AppVersion-0.1.0-informational?style=flat-square)

A Helm chart to create a SecretProviderClass resource

**Homepage:** <https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/csi-secret-provider-class>

## Maintainers
This chart is maintained by [Adfinis](https://adfinis.com/?pk_campaign=github&pk_kwd=helm-charts).

## Source Code

* <https://github.com/adfinis-sygroup/helm-charts>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.adfinis.com | common | 0.0.5 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| parameters | object | `{}` | parameters for provider |
| parametersTpl | string | raw values from `parameters` | template to generate parameters |
| provider | string | `nil` | specify secret provider |
| secretObjects | list | `[]` | secretObjects for for SecretProviderClass |
| secretObjectsTpl | string | raw values from `secretObjects` | template to generate secretObjects |

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
