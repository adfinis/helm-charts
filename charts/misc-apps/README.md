# misc-apps

![Version: 0.10.0](https://img.shields.io/badge/Version-0.10.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.10.0](https://img.shields.io/badge/AppVersion-0.10.0-informational?style=flat-square)

Argo CD app-of-apps config for miscellaneous small tools

**Homepage:** <https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/misc-apps>

## Maintainers
This chart is maintained by [Adfinis](https://adfinis.com/?pk_campaign=github&pk_kwd=helm-charts).

## Source Code

* <https://github.com/adfinis-sygroup/helm-charts>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.adfinis.com | argoconfig | 0.7.4 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| chartmuseum | object | - | [chartmuseum](https://chartmuseum.com) ([example](./example/chartmuseum.yaml)) |
| chartmuseum.chart | string | `"chartmuseum"` | Chart |
| chartmuseum.destination.namespace | string | `"infra-chartmuseum"` | Namespace |
| chartmuseum.enabled | bool | `false` | Enable chartmuseum |
| chartmuseum.repoURL | string | `"https://chartmuseum.github.io/charts"` | [repo](https://chartmuseum.github.io/charts) |
| chartmuseum.targetRevision | string | `"3.1.*"` | [chartmuseum Helm chart](https://github.com/chartmuseum/charts/tree/main/src/chartmuseum) |
| chartmuseum.values | object | [upstream values](https://github.com/chartmuseum/charts/blob/main/src/chartmuseum/values.yaml) | Helm values |
| downscaler | object | - | [kube-downscaler](https://github.com/hjacobs/kube-downscaler) ([example](./examples/kube-downscaler.yaml)) |
| downscaler.chart | string | `"kube-downscaler"` | Chart |
| downscaler.destination.namespace | string | `"infra-downscaler"` | Namespace |
| downscaler.enabled | bool | `false` | Enable kube-downscaler |
| downscaler.repoURL | string | [repo](https://charts.helm.sh/incubator) | Repo URL |
| downscaler.targetRevision | string | `"0.6.*"` | [kube-downscaler Helm chart](https://github.com/helm/charts/tree/master/incubator/kube-downscaler) version |
| downscaler.values | object | [upstream values](https://github.com/helm/charts/blob/master/incubator/kube-downscaler/values.yaml) | Helm values |
| metallb | object | - | [metallb](https://github.com/metallb/metallb) ([example](./examples/metallb.yaml)) |
| metallb.chart | string | `"metallb"` | Chart |
| metallb.destination.namespace | string | `"infra-metallb"` | Namespace |
| metallb.enabled | bool | `false` | Enable metallb |
| metallb.repoURL | string | [repo](https://metallb.github.io/metallb) | Repo URL |
| metallb.targetRevision | string | `"0.10.*"` | [metallb Helm chart](https://github.com/metallb/metallb/tree/main/charts/metallb) |
| metallb.values | object | [upstream values](https://github.com/metallb/metallb/blob/main/charts/metallb/values.yaml) | Helm values |
| sentryKubernetes | object | - | [sentry-kubernetes](https://github.com/getsentry/sentry-kubernetes) ([example](./examples/sentry-kubernetes.yaml) |
| sentryKubernetes.chart | string | `"sentry-kubernetes"` | Chart |
| sentryKubernetes.destination.namespace | string | `"infra-sentry-kubernetes"` | Namespace |
| sentryKubernetes.enabled | bool | `false` | Enable sentry-kubernetes |
| sentryKubernetes.repoURL | string | [repo](https://sentry-kubernetes.github.io/charts) | Repo URL |
| sentryKubernetes.targetRevision | string | `"0.3.*"` | [sentry-kubernetes Helm chart](https://github.com/sentry-kubernetes/charts/tree/develop/sentry-kubernetes) |
| sentryKubernetes.values | object | [upstream values](https://github.com/sentry-kubernetes/charts/blob/develop/sentry-kubernetes/values.yaml) | Helm values |
| signalilo | object | - | [sigalilo](https://github.com/vshn/signalilo) ([example](./examples/signalilo.yaml)) |
| signalilo.chart | string | `"signalilo"` | Chart |
| signalilo.destination.namespace | string | `"infra-signalilo"` | Namespace |
| signalilo.enabled | bool | `false` | Enable signalilo |
| signalilo.repoURL | string | [repo](https://charts.appuio.ch) | Repo URL |
| signalilo.targetRevision | string | `"0.6.*"` | [signalilo Helm chart](https://github.com/appuio/charts/tree/master/appuio/signalilo) version |
| signalilo.values | object | [upstream values](https://github.com/appuio/charts/blob/master/appuio/signalilo/values.yaml) | Helm values |

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
