# infra-apps

![Version: 0.118.0](https://img.shields.io/badge/Version-0.118.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square)

Argo CD app-of-apps config for infrastructure components

**Homepage:** <https://github.com/adfinis/helm-charts/tree/main/charts/infra-apps>

## Maintainers
This chart is maintained by [Adfinis](https://adfinis.com/?pk_campaign=github&pk_kwd=helm-charts).

## Source Code

* <https://github.com/adfinis/helm-charts>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.adfinis.com | argoconfig | 0.8.2 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| argocd | object | [example](./examples/argocd.yaml) | [Argo CD](https://argoproj.github.io/argo-cd/) |
| argocd.annotations | object | `{}` | Annotations for Argo CD app |
| argocd.chart | string | `"argo-cd"` | Chart |
| argocd.destination.namespace | string | `"infra-argocd"` | Namespace |
| argocd.enabled | bool | `false` | Enable Argo CD |
| argocd.repoURL | string | [repo](https://argoproj.github.io/argo-helm) | Repo URL |
| argocd.targetRevision | string | `"5.4.*"` | [argo-cd Helm chart](https://github.com/argoproj/argo-helm/tree/main/charts/argo-cd) version |
| argocd.values | object | [upstream values](https://github.com/argoproj/argo-helm/blob/main/charts/argo-cd/values.yaml) | Helm values |
| argoconfig.application.annotations | object | `{}` | Optional annotations to add to all Applications metadata. |
| certManager | object | [example](./examples/cert-manager.yaml) | [cert-manager](https://cert-manager.io/) |
| certManager.annotations | object | `{}` | Annotations for cert-manager app |
| certManager.chart | string | `"cert-manager"` | Chart |
| certManager.destination.namespace | string | `"infra-certmanager"` | Namespace |
| certManager.enabled | bool | `false` | Enable cert-manager |
| certManager.repoURL | string | [repo](https://charts.jetstack.io) | Repo URL |
| certManager.targetRevision | string | `"1.9.*"` | [cert-manager Helm chart](https://github.com/jetstack/cert-manager/tree/master/deploy/charts/cert-manager) version |
| certManager.values | object | [upstream values](https://github.com/jetstack/cert-manager/blob/master/deploy/charts/cert-manager/values.yaml) | Helm values |
| certManagerIssuers | object | [example](./examples/cert-manager-issuers.yaml) | [cert-manager-issuers](https://cert-manager.io/docs/configuration/) |
| certManagerIssuers.annotations | object | `{}` | Annotations for cert-manager-issuers app |
| certManagerIssuers.chart | string | `"cert-manager-issuers"` | Chart |
| certManagerIssuers.destination.namespace | string | `"infra-certmanager"` | Namespace |
| certManagerIssuers.enabled | bool | `false` | Enable cert-manager-issuers app |
| certManagerIssuers.repoURL | string | [repo](https://charts.adfinis.com) | Repo URL |
| certManagerIssuers.targetRevision | string | `"0.2.*"` | [cert-manager-issuers Helm chart](https://github.com/adfinis/helm-charts/tree/main/charts/cert-manager-issuers) version |
| certManagerIssuers.values | object | [upstream values](https://github.com/adfinis/helm-charts/blob/main/charts/cert-manager-issuers/values.yaml) | Helm values |
| certManagerMonitoring | object | [example](./examples/cert-manager-monitoring.yaml) | [cert-manager-monitoring](https://cert-manager.io/docs/configuration/) |
| certManagerMonitoring.annotations | object | `{}` | Annotations for cert-manager-monitoring app |
| certManagerMonitoring.chart | string | `"cert-manager-monitoring"` | Chart |
| certManagerMonitoring.destination.namespace | string | `"infra-certmanager"` | Namespace |
| certManagerMonitoring.enabled | bool | `false` | Enable cert-manager-monitoring |
| certManagerMonitoring.repoURL | string | [repo](https://charts.adfinis.com) | Repo URL |
| certManagerMonitoring.targetRevision | string | `"0.1.*"` | [cert-manager-monitoring Helm chart](https://github.com/adfinis/helm-charts/tree/main/charts/cert-manager-monitoring) version |
| certManagerMonitoring.values | object | [upstream values](https://github.com/adfinis/helm-charts/blob/main/charts/cert-manager-monitoring/values.yaml) | Helm values |
| ingressNginx | object | [example](./examples/nginx-ingress.yaml) | [NGINX Ingress Controller](https://kubernetes.github.io/ingress-nginx/) |
| ingressNginx.annotations | object | `{}` | Annotations for nginx-ingress app |
| ingressNginx.chart | string | `"ingress-nginx"` | Chart |
| ingressNginx.destination.namespace | string | `"infra-ingress"` | Namespace |
| ingressNginx.enabled | bool | `false` | Configure nginx-ingress |
| ingressNginx.repoURL | string | [repo](https://kubernetes.github.io/ingress-nginx) | Repo URL |
| ingressNginx.targetRevision | string | `"4.2.*"` | [ingress-nginx Helm chart](https://github.com/kubernetes/ingress-nginx/tree/main/charts/ingress-nginx) version |
| ingressNginx.values | object | [upstream values](https://github.com/kubernetes/ingress-nginx/blob/main/charts/ingress-nginx/values.yaml) | Helm values |
| kubeEventExporter | object | [example](./examples/kubernetes-event-exporter.yaml) | [kubernetes-event-exporter](https://github.com/opsgenie/kubernetes-event-exporter) |
| kubeEventExporter.annotations | object | `{}` | Annotations for kubernetes-event-exporter app |
| kubeEventExporter.chart | string | `"kubernetes-event-exporter"` | Chart |
| kubeEventExporter.destination.namespace | string | `"infra-kube-event-exporter"` | Namespace |
| kubeEventExporter.enabled | bool | `false` | Enable kubernetes-event-exporter |
| kubeEventExporter.repoURL | string | [repo](https://charts.bitnami.com/bitnami) | Repo URL |
| kubeEventExporter.targetRevision | string | `"1.4.*"` | [kubernetes-event-exporter Helm chart](https://github.com/bitnami/charts/tree/master/bitnami/kubernetes-event-exporter) |
| kubeEventExporter.values | object | [upstream values](https://github.com/bitnami/charts/blob/master/bitnami/kubernetes-event-exporter/values.yaml) | Helm values |
| kubePrometheusStack | object | [example](./examples/prometheus.yaml) | [prometheus-operator](https://github.com/coreos/prometheus-operator) |
| kubePrometheusStack.annotations | object | `{}` | Annotations for prometheus-operator app |
| kubePrometheusStack.chart | string | `"kube-prometheus-stack"` | Chart |
| kubePrometheusStack.destination.namespace | string | `"infra-monitoring"` | Namespace |
| kubePrometheusStack.enabled | bool | `false` | Enable prometheus-operator |
| kubePrometheusStack.repoURL | string | [repo](https://prometheus-community.github.io/helm-charts) | Repo URL |
| kubePrometheusStack.targetRevision | string | `"40.0.*"` | [kube-prometheus-stack Helm chart](https://github.com/prometheus-community/helm-charts/tree/main/charts/kube-prometheus-stack) version |
| kubePrometheusStack.values | object | [upstream values](https://github.com/prometheus-community/helm-charts/blob/main/charts/kube-prometheus-stack/values.yaml) | Helm values |
| kured | object | [example](./examples/kured.yaml) | [kured](https://github.com/kubereboot/kured) |
| kured.annotations | object | `{}` | Annotations for Kured app |
| kured.chart | string | `"kured"` | Chart |
| kured.destination.namespace | string | `"infra-kured"` | Namespace |
| kured.enabled | bool | `false` | Enable Kured |
| kured.repoURL | string | [repo](https://kubereboot.github.io/charts) | Repo URL |
| kured.targetRevision | string | `"4.0.1"` | [Kured Helm chart](https://github.com/kubereboot/kured/tree/main/charts/kured) |
| kured.values | object | [upstream values](https://github.com/kubereboot/kured/blob/main/charts/kured/values.yaml) | Helm values |
| mimir | object | [example](./examples/mimir.yaml) | [mimir](https://github.com/grafana/mimir) |
| mimir.annotations | object | `{}` | Annotations for mimir app |
| mimir.chart | string | `"mimir-distributed"` | Chart |
| mimir.destination.namespace | string | `"infra-mimir"` | Namespace |
| mimir.enabled | bool | `false` | Enable mimir |
| mimir.repoURL | string | [repo](https://grafana.github.io/helm-charts) | Repo URL |
| mimir.targetRevision | string | `"2.1.*"` | [mimir Helm chart](https://github.com/grafana/mimir/tree/main/operations/helm/charts/mimir-distributed) |
| mimir.values | object | [upstream values](https://github.com/grafana/mimir/tree/main/operations/helm/charts/mimir-distributed/values.yaml) | Helm values |
| rbacManager | object | [example](./examples/rbac-manager.yaml) | [rbac-manager](https://fairwindsops.github.io/rbac-manager/) |
| rbacManager.annotations | object | `{}` | Annotations for rbac-manager app |
| rbacManager.chart | string | `"rbac-manager"` | Chart |
| rbacManager.destination.namespace | string | `"infra-rbac"` | Namespace |
| rbacManager.enabled | bool | `false` | Enable rbac-manager operator |
| rbacManager.repoURL | string | [repo](https://charts.fairwinds.com/stable) | Repo URL |
| rbacManager.targetRevision | string | `"1.13.1"` | [rbac-manager operator Helm chart](https://github.com/FairwindsOps/charts/tree/master/stable/rbac-manager) version |
| rbacManager.values | object | [upstream values](https://github.com/FairwindsOps/charts/blob/master/stable/rbac-manager/values.yaml) | Helm values |
| thanos | object | [example](./examples/thanos.yaml) | [Thanos](https://thanos.io/) |
| thanos.annotations | object | `{}` | Annotations for Thanos app |
| thanos.chart | string | `"thanos"` | Chart |
| thanos.destination.namespace | string | `"infra-monitoring"` | Namespace |
| thanos.enabled | bool | `false` | Enable Thanos |
| thanos.repoURL | string | [repo](https://charts.bitnami.com/bitnami) | Repo URL |
| thanos.targetRevision | string | `"10.5.*"` | [Thanos Helm chart](https://github.com/bitnami/charts/tree/master/bitnami/thanos) |
| thanos.values | object | [upstream values](https://github.com/bitnami/charts/blob/master/bitnami/thanos/values.yaml) | Helm values |
| velero | object | [example](./examples/velero.yaml) | [Velero](https://velero.io/) |
| velero.annotations | object | `{}` | Annotations for Velero app |
| velero.chart | string | `"velero"` | Chart |
| velero.destination.namespace | string | `"infra-velero"` | Namespace |
| velero.enabled | bool | `false` | Enable Velero |
| velero.repoURL | string | [repo](https://vmware-tanzu.github.io/helm-charts) | Repo URL |
| velero.targetRevision | string | `"2.31.*"` | [Velero Helm chart](https://github.com/vmware-tanzu/helm-charts/tree/main/charts/velero) |
| velero.values | object | [upstream values](https://github.com/vmware-tanzu/helm-charts/blob/main/charts/velero/values.yaml) | Helm values |

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
