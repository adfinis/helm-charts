# infra-apps

![Version: 0.31.0](https://img.shields.io/badge/Version-0.31.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.31.0](https://img.shields.io/badge/AppVersion-0.31.0-informational?style=flat-square)

Argo CD app-of-apps config for infrastructure components

**Homepage:** <https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/infra-apps>

## Maintainers
This chart is maintained by [Adfinis](https://adfinis.com/?pk_campaign=github&pk_kwd=helm-charts).

## Source Code

* <https://github.com/adfinis-sygroup/helm-charts>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.adfinis.com | argoconfig | 0.7.2 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| argocd | object | [example](./examples/argocd.yaml) | [Argo CD](https://argoproj.github.io/argo-cd/) |
| argocd.chart | string | `"argo-cd"` | Chart |
| argocd.destination.namespace | string | `"infra-argocd"` | Namespace |
| argocd.enabled | bool | `false` | Enable Argo CD |
| argocd.repoURL | string | [repo](https://argoproj.github.io/argo-helm) | Repo URL |
| argocd.targetRevision | string | `"3.6.*"` | [argo-cd Helm chart](https://github.com/argoproj/argo-helm/tree/master/charts/argo-cd) version |
| argocd.values | object | [upstream values](https://github.com/argoproj/argo-helm/blob/master/charts/argo-cd/values.yaml) | Helm values |
| argocdNotifications.chart | string | `"argocd-notifications"` | Chart |
| argocdNotifications.destination.namespace | string | `"infra-argocd"` | Namespace |
| argocdNotifications.enabled | bool | `false` | Enable ArgoCD Notifications |
| argocdNotifications.name | string | `"argocd-notifications"` |  |
| argocdNotifications.repoURL | string | [repo](https://argoproj.github.io/argo-helm) | Repo URL |
| argocdNotifications.targetRevision | string | `"1.4.*"` | [argo-cd Helm chart](https://github.com/argoproj/argo-helm/tree/master/charts/argocd-notifications) version |
| argocdNotifications.values | object | [upstream values](https://github.com/argoproj/argo-helm/blob/master/charts/argocd-notification/values.yaml) | Helm values |
| certManager | object | [example](./examples/cert-manager.yaml) | [cert-manager](https://cert-manager.io/) |
| certManager.chart | string | `"cert-manager"` | Chart |
| certManager.destination.namespace | string | `"infra-certmanager"` | Namespace |
| certManager.enabled | bool | `false` | Enable cert-manager |
| certManager.repoURL | string | [repo](https://charts.jetstack.io) | Repo URL |
| certManager.targetRevision | string | `"1.3.*"` | [cert-manager Helm chart](https://github.com/jetstack/cert-manager/tree/master/deploy/charts/cert-manager) version |
| certManager.values | object | [upstream values](https://github.com/jetstack/cert-manager/blob/master/deploy/charts/cert-manager/values.yaml) | Helm values |
| certManagerIssuers.chart | string | `"cert-manager-issuers"` | Chart |
| certManagerIssuers.destination.namespace | string | `"infra-certmanager"` | Namespace |
| certManagerIssuers.enabled | bool | `false` | Enable cert-manager-issuers |
| certManagerIssuers.name | string | `"certmgr-issuers"` |  |
| certManagerIssuers.repoURL | string | [repo](https://charts.adfinis.com) | Repo URL |
| certManagerIssuers.targetRevision | string | `"0.2.*"` |  |
| certManagerIssuers.values | object | [upstream values](https://github.com/adfinis-sygroup/helm-charts/blob/master/charts/cert-manager-issuers/values.yaml) | Helm values |
| ingressNginx | object | [example](./examples/nginx-ingress.yaml) | [NGINX Ingress Controller](https://kubernetes.github.io/ingress-nginx/) |
| ingressNginx.chart | string | `"ingress-nginx"` | Chart |
| ingressNginx.destination.namespace | string | `"infra-ingress"` | Namespace |
| ingressNginx.enabled | bool | `false` | Configure nginx-ingress |
| ingressNginx.repoURL | string | [repo](https://kubernetes.github.io/ingress-nginx) | Repo URL |
| ingressNginx.targetRevision | string | `"3.33.*"` | [ingress-nginx Helm chart](https://github.com/kubernetes/ingress-nginx/tree/master/charts/ingress-nginx) version |
| ingressNginx.values | object | [upstream values](https://github.com/kubernetes/ingress-nginx/blob/master/charts/ingress-nginx/values.yaml) | Helm values |
| kubePrometheusStack | object | [example](./examples/prometheus.yaml) | [prometheus-operator](https://github.com/coreos/prometheus-operator) |
| kubePrometheusStack.chart | string | `"kube-prometheus-stack"` | Chart |
| kubePrometheusStack.destination.namespace | string | `"infra-monitoring"` | Namespace |
| kubePrometheusStack.enabled | bool | `false` | Enable prometheus-operator |
| kubePrometheusStack.repoURL | string | [repo](https://prometheus-community.github.io/helm-charts) | Repo URL |
| kubePrometheusStack.targetRevision | string | `"15.0.*"` | [kube-prometheus-stack Helm chart](https://github.com/prometheus-community/helm-charts/tree/main/charts/kube-prometheus-stack) version |
| kubePrometheusStack.values | object | [upstream values](https://github.com/prometheus-community/helm-charts/blob/main/charts/kube-prometheus-stack/values.yaml) | Helm values |
| kured | object | [example](./examples/kured.yaml) | [kured](https://github.com/weaveworks/kured) |
| kured.chart | string | `"kured"` | Chart |
| kured.destination.namespace | string | `"infra-kured"` | Namespace |
| kured.enabled | bool | `false` | Enable Kured |
| kured.repoURL | string | [repo](https://weaveworks.github.io/kured) | Repo URL |
| kured.targetRevision | string | `"2.6.*"` | [Kured Helm chart](https://github.com/weaveworks/kured/tree/main/charts/kured) |
| kured.values | object | [upstream values](https://github.com/weaveworks/kured/blob/main/charts/kured/values.yaml) | Helm values |
| rbacManager | object | [example](./examples/rbac-manager.yaml) | [rbac-manager](https://fairwindsops.github.io/rbac-manager/) |
| rbacManager.chart | string | `"rbac-manager"` | Chart |
| rbacManager.destination.namespace | string | `"infra-rbac"` | Namespace |
| rbacManager.enabled | bool | `false` | Enable rbac-manager operator |
| rbacManager.repoURL | string | [repo](https://charts.fairwinds.com/stable) | Repo URL |
| rbacManager.targetRevision | string | `"1.8.*"` | [rbac-manager operator Helm chart](https://github.com/FairwindsOps/charts/tree/master/stable/rbac-manager) version |
| rbacManager.values | object | [upstream values](https://github.com/FairwindsOps/charts/blob/master/stable/rbac-manager/values.yaml) | Helm values |
| thanos | object | [example](./examples/thanos.yaml) | [Thanos](https://thanos.io/) |
| thanos.chart | string | `"thanos"` | Chart |
| thanos.destination.namespace | string | `"infra-monitoring"` | Namespace |
| thanos.enabled | bool | `false` | Enable Thanos |
| thanos.repoURL | string | [repo](https://charts.bitnami.com/bitnami) | Repo URL |
| thanos.targetRevision | string | `"3.17.*"` | [Thanos Helm chart](https://github.com/bitnami/charts/tree/master/bitnami/thanos) |
| thanos.values | object | [upstream values](https://github.com/bitnami/charts/blob/master/bitnami/thanos/values.yaml) | Helm values |
| velero | object | [example](./examples/velero.yaml) | [Velero](https://velero.io/) |
| velero.chart | string | `"velero"` | Chart |
| velero.destination.namespace | string | `"infra-velero"` | Namespace |
| velero.enabled | bool | `false` | Enable Velero |
| velero.repoURL | string | [repo](https://vmware-tanzu.github.io/helm-charts) | Repo URL |
| velero.targetRevision | string | `"2.22.*"` | [Velero Helm chart](https://github.com/vmware-tanzu/helm-charts/tree/main/charts/velero) |
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
