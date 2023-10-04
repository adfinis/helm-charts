# misc-apps

![Version: 0.38.0](https://img.shields.io/badge/Version-0.38.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square)

Argo CD app-of-apps config for miscellaneous small tools

**Homepage:** <https://github.com/adfinis/helm-charts/tree/main/charts/misc-apps>

## Maintainers
This chart is maintained by [Adfinis](https://adfinis.com/?pk_campaign=github&pk_kwd=helm-charts).

## Source Code

* <https://github.com/adfinis/helm-charts>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.adfinis.com | argoconfig | 0.9.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| argocdApps | object | [example](./examples/argocd-apps.yaml) | [Argo CD Declarative Setup](https://argo-cd.readthedocs.io/en/stable/operator-manual/declarative-setup/) |
| argocdApps.annotations | object | `{}` | Annotations for Argo CD Apps app |
| argocdApps.chart | string | `"argocd-apps"` | Chart |
| argocdApps.destination.namespace | string | `"infra-argocd"` | Namespace |
| argocdApps.enabled | bool | `false` | Enable Argo CD Apps |
| argocdApps.repoURL | string | [repo](https://argoproj.github.io/argo-helm) | Repo URL |
| argocdApps.targetRevision | string | `"1.4.1"` | [argocd-apps Helm chart](https://github.com/argoproj/argo-helm/tree/main/charts/argocd-apps) version |
| argocdApps.values | object | [upstream values](https://github.com/argoproj/argo-helm/blob/main/charts/argocd-apps/values.yaml) | Helm values |
| chartmuseum | object | - | [chartmuseum](https://chartmuseum.com) ([example](./example/chartmuseum.yaml)) |
| chartmuseum.chart | string | `"chartmuseum"` | Chart |
| chartmuseum.destination.namespace | string | `"infra-chartmuseum"` | Namespace |
| chartmuseum.enabled | bool | `false` | Enable chartmuseum |
| chartmuseum.repoURL | string | [repo](https://chartmuseum.github.io/charts) | Repo URL |
| chartmuseum.targetRevision | string | `"3.9.2"` | [chartmuseum Helm chart](https://github.com/chartmuseum/charts/tree/main/src/chartmuseum) |
| chartmuseum.values | object | [upstream values](https://github.com/chartmuseum/charts/blob/main/src/chartmuseum/values.yaml) | Helm values |
| downscaler | object | - | [kube-downscaler](https://codeberg.org/hjacobs/kube-downscaler) ([example](./examples/kube-downscaler.yaml)) |
| downscaler.chart | string | `"kube-downscaler"` | Chart |
| downscaler.destination.namespace | string | `"infra-downscaler"` | Namespace |
| downscaler.enabled | bool | `false` | Enable kube-downscaler |
| downscaler.repoURL | string | [repo](https://charts.deliveryhero.io) | Repo URL |
| downscaler.targetRevision | string | `"0.7.1"` | [kube-downscaler Helm chart](https://github.com/deliveryhero/helm-charts/tree/master/stable/kube-downscaler) version |
| downscaler.values | object | [upstream values](https://github.com/deliveryhero/helm-charts/blob/master/stable/kube-downscaler/values.yaml) | Helm values |
| grafanaAgentOperator | object | [example](./examples/grafana-agent.yaml) | [grafana-agent](https://grafana.github.io/helm-charts) |
| grafanaAgentOperator.annotations | object | `{}` | Annotations for grafana-agent |
| grafanaAgentOperator.chart | string | `"grafana-agent-operator"` | Chart |
| grafanaAgentOperator.destination.namespace | string | `"infra-grafana-agent"` | Namespace |
| grafanaAgentOperator.enabled | bool | `false` | Enable grafana-agent |
| grafanaAgentOperator.repoURL | string | [repo](https://grafana.github.io/helm-charts) | Repo URL |
| grafanaAgentOperator.targetRevision | string | `"0.2.8"` | [Grafana Agent Helm chart](https://github.com/grafana/helm-charts/tree/main/charts/agent-operator) version |
| grafanaAgentOperator.values | object | [upstream values](https://github.com/grafana/helm-charts/blob/main/charts/agent-operator/values.yaml) | Helm values |
| keda | object | [example](./examples/keda.yaml) | [KEDA](https://keda.sh/) |
| keda.annotations | object | `{}` | Annotations for KEDA app |
| keda.chart | string | `"keda"` | Chart |
| keda.destination.namespace | string | `"infra-keda"` | Namespace |
| keda.enabled | bool | `false` | Enable KEDA |
| keda.repoURL | string | [repo](https://kedacore.github.io/charts) | Repo URL |
| keda.targetRevision | string | `"2.10.1"` | [keda Helm chart](https://github.com/kedacore/charts/tree/main/keda/) version |
| keda.values | object | [upstream values](https://github.com/kedacore/charts/blob/main/keda/values.yaml) | Helm values |
| metallb | object | - | [metallb](https://github.com/metallb/metallb) ([example](./examples/metallb.yaml)) |
| metallb.chart | string | `"metallb"` | Chart |
| metallb.destination.namespace | string | `"infra-metallb"` | Namespace |
| metallb.enabled | bool | `false` | Enable metallb |
| metallb.repoURL | string | [repo](https://metallb.github.io/metallb) | Repo URL |
| metallb.targetRevision | string | `"0.13.*"` | [metallb Helm chart](https://github.com/metallb/metallb/tree/main/charts/metallb) |
| metallb.values | object | [upstream values](https://github.com/metallb/metallb/blob/main/charts/metallb/values.yaml) | Helm values |
| opencost | object | [example](./examples/opencost.yaml) | [OpenCost](https://www.opencost.io) |
| opencost.annotations | object | `{}` | Annotations for OpenCost |
| opencost.chart | string | `"opencost"` | Chart |
| opencost.destination.namespace | string | `"infra-opencost"` | Namespace |
| opencost.enabled | bool | `false` | Enable OpenCost |
| opencost.repoURL | string | [repo](https://opencost.github.io/opencost-helm-chart) | Repo URL |
| opencost.targetRevision | string | `"1.19.3"` | [OpenCost Helm chart](https://github.com/opencost/opencost-helm-chart/tree/main/charts/opencost) |
| opencost.values | object | [upstream values](https://github.com/opencost/opencost-helm-chart/blob/main/charts/opencost/values.yaml) | Helm values |
| prometheusMsteams | object | - | [prometheus-msteams](https://github.com/prometheus-msteams/prometheus-msteams) ([example](./example/prometheus-msteams.yaml)) |
| prometheusMsteams.chart | string | `"prometheus-msteams"` | Chart |
| prometheusMsteams.destination.namespace | string | `"infra-prometheus-msteams"` | Namespace |
| prometheusMsteams.enabled | bool | `false` | Enable prometheus-msteams |
| prometheusMsteams.repoURL | string | [repo](https://prometheus-msteams.github.io/prometheus-msteams) | Repo URL |
| prometheusMsteams.targetRevision | string | `"1.3.*"` | [prometheus-msteams Helm chart](https://github.com/prometheus-msteams/prometheus-msteams/tree/master/chart/prometheus-msteams) |
| prometheusMsteams.values | object | [upstream values](https://github.com/prometheus-msteams/prometheus-msteams/blob/master/chart/prometheus-msteams/values.yaml) | Helm values |
| reloader | object | - | [reloader](https://github.com/stakater/reloader) ([example](./examples/reloader.yaml)) |
| reloader.chart | string | `"reloader"` | Chart |
| reloader.destination.namespace | string | `"infra-reloader"` | Namespace |
| reloader.enabled | bool | `false` | Enable reloader |
| reloader.repoURL | string | [repo](https://stakater.github.io/stakater-charts) | Repo URL |
| reloader.targetRevision | string | `"v1.0.22"` | [reloader Helm chart](https://github.com/stakater/Reloader/tree/master/deployments/kubernetes/chart/reloader) version |
| reloader.values | object | [upstream values](https://github.com/stakater/Reloader/tree/master/deployments/kubernetes/chart/reloader/values.yaml) | Helm values |
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
| signalilo.targetRevision | string | `"0.12.1"` | [signalilo Helm chart](https://github.com/appuio/charts/tree/master/appuio/signalilo) version |
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
