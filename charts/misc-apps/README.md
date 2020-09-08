# misc-apps

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.1.0](https://img.shields.io/badge/AppVersion-0.1.0-informational?style=flat-square)

Argo CD app-of-apps config for miscellaneous small tools

**Homepage:** <https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/misc-apps>

## Maintainers
This chart is maintained by [Adfinis](https://adfinis.com/?pk_campaign=github&pk_kwd=helm-charts).

## Source Code

* <https://github.com/adfinis-sygroup/helm-charts>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.adfinis.com | argoconfig | 0.6.3 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| downscaler | object | see below | [kube-downscaler](https://github.com/hjacobs/kube-downscaler) |
| downscaler.chart | string | `"kube-downscaler"` | Chart |
| downscaler.destination.namespace | string | `"infra-downscaler"` | Namespace |
| downscaler.enabled | bool | `false` | Enable kube-downscaler: [example](./examples/kube-downscaler.yaml) |
| downscaler.repoURL | string | [repo](http://storage.googleapis.com/kubernetes-charts-incubator) | Repo URL |
| downscaler.targetRevision | string | `"0.5.*"` | [kube-downscaler Helm chart](https://github.com/helm/charts/tree/master/incubator/kube-downscaler) version |
| downscaler.values | object | [upstream values](https://github.com/helm/charts/blob/master/incubator/kube-downscaler/values.yaml) | Helm values |
| signalilo | object | see below | [sigalilo](https://github.com/vshn/signalilo) |
| signalilo.chart | string | `"signalilo"` | Chart |
| signalilo.destination.namespace | string | `"infra-signalilo"` | Namespace |
| signalilo.enabled | bool | `false` | Enable signalilo: [example](./examples/signalilo.yaml) |
| signalilo.targetRevision | string | `"0.5.*"` | [signalilo Helm chart](https://github.com/appuio/charts/tree/master/signalilo) version |
| signalilo.values | object | [upstream values](https://github.com/appuio/charts/blob/master/signalilo/values.yaml) | Helm values |

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
