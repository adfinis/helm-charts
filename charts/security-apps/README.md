# security-apps

![Version: 0.82.0](https://img.shields.io/badge/Version-0.82.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square)

Argo CD app-of-apps config for security applications

**Homepage:** <https://github.com/adfinis/helm-charts/tree/main/charts/security-apps>

## Maintainers
This chart is maintained by [Adfinis](https://adfinis.com/?pk_campaign=github&pk_kwd=helm-charts).

## Source Code

* <https://github.com/adfinis/helm-charts>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.adfinis.com | argoconfig | 0.9.1 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| dex | object | - | [dex](https://github.com/dexidp/dex/) ([example](./examples/dex.yaml)) |
| dex.chart | string | `"dex"` | Chart |
| dex.destination.namespace | string | `"infra-dex"` | Namespace |
| dex.enabled | bool | `false` | Enable dex |
| dex.repoURL | string | [repo](https://charts.dexidp.io) | Repo URL |
| dex.targetRevision | string | `"0.14.2"` | [dex Helm chart](https://github.com/dexidp/helm-charts/tree/master/charts/dex/) version |
| dex.values | object | [upstream values](https://github.com/dexidp/helm-charts/tree/master/charts/dex/values.yaml) | Helm values |
| dexK8sAuthenticator | object | - | [dex-k8s-authenticator](https://github.com/mintel/dex-k8s-authenticator) ([example](./examples/dex-k8s-authenticator.yaml)) |
| dexK8sAuthenticator.chart | string | `"dexK8sAuthenticator"` | Chart |
| dexK8sAuthenticator.destination.namespace | string | `"infra-dex-k8s-authenticator"` | Namespace |
| dexK8sAuthenticator.enabled | bool | `false` | Enable dex-k8s-authenticator |
| dexK8sAuthenticator.repoPath | string | `"charts/dex-k8s-authenticator"` | Repo Path |
| dexK8sAuthenticator.repoURL | string | [repo](https://github.com/mintel/dex-k8s-authenticator.git) | Repo URL |
| dexK8sAuthenticator.targetRevision | string | `"v1.4.0"` | [dex-k8s-authenticator Helm chart](https://github.com/mintel/dex-k8s-authenticator/tree/master/charts/dex-k8s-authenticator/) version |
| dexK8sAuthenticator.values | object | [upstream values](https://github.com/mintel/dex-k8s-authenticator/tree/master/charts/dex-k8s-authenticator/values.yaml) | Helm values |
| falco | object | - | [falco](https://github.com/falcosecurity/falco/) ([example](./examples/falco.yaml)) |
| falco.chart | string | `"falco"` | Chart |
| falco.destination.namespace | string | `"infra-falco"` | Namespace |
| falco.enabled | bool | `false` | Enable falco |
| falco.repoURL | string | [repo](https://falcosecurity.github.io/charts) | Repo URL |
| falco.targetRevision | string | `"2.3.0"` | [falco Helm chart](https://github.com/falcosecurity/charts/tree/master/falco) version |
| falco.values | object | [upstream values](https://github.com/falcosecurity/charts/blob/master/falco/values.yaml) | Helm values |
| falcoExporter | object | - | [falco-exporter](https://github.com/falcosecurity/falco-exporter/) ([example](./examples/falco-exporter.yaml)) |
| falcoExporter.chart | string | `"falco-exporter"` | Chart |
| falcoExporter.destination.namespace | string | `"infra-falco"` | Namespace |
| falcoExporter.enabled | bool | `false` | Enable falco-exporter |
| falcoExporter.repoURL | string | [repo](https://falcosecurity.github.io/charts) | Repo URL |
| falcoExporter.targetRevision | string | `"0.9.1"` | [falco Helm chart](https://github.com/falcosecurity/charts/tree/master/falco-exporter) version |
| falcoExporter.values | object | [upstream values](https://github.com/falcosecurity/charts/blob/master/falco-exporter/values.yaml) | Helm values |
| gangway | object | DEPRECATED | [gangway](https://github.com/heptiolabs/gangway/) is DEPRECATED, use dexK8sAuthenticator instead |
| gangway.chart | string | `"gangway"` | Chart |
| gangway.destination.namespace | string | `"infra-gangway"` | Namespace |
| gangway.enabled | bool | `false` | Enable gangway |
| gangway.repoURL | string | [repo](https://gabibbo97.github.io/charts) | Repo URL |
| gangway.targetRevision | string | `"1.1.*"` | [gangway Helm chart](https://github.com/gabibbo97/charts/tree/master/charts/gangway/) version |
| gangway.values | object | [upstream values](https://github.com/gabibbo97/charts/tree/master/charts/gangway/values.yaml) | Helm values |
| gatekeeper | object | - | [gatekeeper](https://github.com/open-policy-agent/gatekeeper) ([example](./examples/gatekeeper.yaml)) |
| gatekeeper.chart | string | `"gatekeeper"` | Chart |
| gatekeeper.destination.namespace | string | `"infra-gatekeeper"` | Namespace |
| gatekeeper.enabled | bool | `false` | Enable gatekeeper |
| gatekeeper.repoURL | string | [repo](https://open-policy-agent.github.io/gatekeeper/charts) | Repo URL |
| gatekeeper.targetRevision | string | `"3.10.0"` | [gatekeeper Helm chart](https://github.com/open-policy-agent/gatekeeper/tree/master/charts/gatekeeper) version |
| gatekeeper.values | object | [upstream values](https://github.com/open-policy-agent/gatekeeper/blob/master/charts/gatekeeper/values.yaml) | Helm values |
| kyverno | object | [example](./examples/kyverno.yaml) | [Kyverno](https://kyverno.io) |
| kyverno.annotations | object | `{}` | Annotations for kyverno |
| kyverno.chart | string | `"kyverno"` | Chart |
| kyverno.destination.namespace | string | `"infra-kyverno"` | Namespace |
| kyverno.enabled | bool | `false` | Enable kyverno |
| kyverno.repoURL | string | [repo](https://kyverno.github.io/kyverno/) | Repo URL |
| kyverno.targetRevision | string | `"3.1.4"` | [kyverno Helm chart](https://github.com/kyverno/kyverno/tree/main/charts/kyverno) |
| kyverno.values | object | [upstream values](https://github.com/kyverno/kyverno/blob/main/charts/kyverno/values.yaml) | Helm values |
| kyvernoPolicies | object | [example](./examples/kyverno.yaml) | [Kyverno Policies](https://kyverno.io) |
| kyvernoPolicies.annotations | object | `{}` | Annotations for kyverno |
| kyvernoPolicies.chart | string | `"kyverno-policies"` | Chart |
| kyvernoPolicies.destination.namespace | string | `"infra-kyverno"` | Namespace |
| kyvernoPolicies.enabled | bool | `false` | Enable kyverno-policies |
| kyvernoPolicies.repoURL | string | [repo](https://kyverno.github.io/kyverno/) | Repo URL |
| kyvernoPolicies.targetRevision | string | `"3.1.4"` | [kyverno Helm chart](https://github.com/kyverno/kyverno/tree/main/charts/kyverno-policies) |
| kyvernoPolicies.values | object | [upstream values](https://github.com/kyverno/kyverno/blob/main/charts/kyverno-policies/values.yaml) | Helm values |
| neuvector | object | - | [NeuVector](https://github.com/neuvector/neuvector) ([example](./example/neuvector.yaml)) |
| neuvector.chart | string | `"core"` | Chart |
| neuvector.destination.namespace | string | `"infra-neuvector"` | Namespace |
| neuvector.enabled | bool | `false` | Enable neuvector |
| neuvector.repoURL | string | [repo](https://neuvector.github.io/neuvector-helm) | Repo URL |
| neuvector.targetRevision | string | `"2.6.1"` | [neuvector/core Helm chart](https://github.com/neuvector/neuvector-helm/tree/master/charts/core) version |
| neuvector.values | object | [upstream values](https://github.com/neuvector/neuvector-helm/blob/master/charts/core/values.yaml) | Helm values |
| neuvectorMonitor | object | - | [NeuVector monitor](https://github.com/neuvector/neuvector-helm/tree/master/charts/monitor) ([example](./example/neuvector.yaml)) |
| neuvectorMonitor.chart | string | `"monitor"` | Chart |
| neuvectorMonitor.destination.namespace | string | `"infra-neuvector"` | Namespace |
| neuvectorMonitor.enabled | bool | `false` | Enable neuvector/monitor |
| neuvectorMonitor.repoURL | string | [repo](https://neuvector.github.io/neuvector-helm) | Repo URL |
| neuvectorMonitor.targetRevision | string | `"2.6.1"` | [neuvector/monitor Helm chart](https://github.com/neuvector/neuvector-helm/tree/master/charts/monitor) version |
| neuvectorMonitor.values | object | [upstream values](https://github.com/neuvector/neuvector-helm/blob/master/charts/monitor/values.yaml) | Helm values |
| oauth2Proxy | object | [example](./examples/oauth2-proxy.yaml) | [oauth2-proxy](https://github.com/oauth2-proxy/oauth2-proxy) |
| oauth2Proxy.annotations | object | `{}` | Annotations for oauth2-proxy app |
| oauth2Proxy.chart | string | `"oauth2-proxy"` | Chart |
| oauth2Proxy.destination.namespace | string | `"infra-oauth2-proxy"` | Namespace |
| oauth2Proxy.enabled | bool | `false` | Enable oauth2-proxy |
| oauth2Proxy.repoURL | string | [repo](https://https://oauth2-proxy.github.io/manifests) | Repo URL |
| oauth2Proxy.targetRevision | string | `"6.10.1"` | [oauth2-proxy Helm chart](https://github.com/oauth2-proxy/manifests/tree/main/helm/oauth2-proxy) |
| oauth2Proxy.values | object | [upstream values](https://github.com/oauth2-proxy/manifests/blob/main/helm/oauth2-proxy/values.yaml) | Helm values |
| secretsStoreCsiDriver | object | - | [secrets-store-csi-driver](https://github.com/kubernetes-sigs/secrets-store-csi-driver) ([example](./examples/secrets-store-csi-driver.yaml)) |
| secretsStoreCsiDriver.chart | string | `"secrets-store-csi-driver"` | Chart |
| secretsStoreCsiDriver.destination.namespace | string | `"infra-secrets-store-csi"` | Namespace |
| secretsStoreCsiDriver.enabled | bool | `false` | Enable secrets-store-csi-driver |
| secretsStoreCsiDriver.repoURL | string | [repo](https://kubernetes-sigs.github.io/secrets-store-csi-driver/charts) | Repo URL |
| secretsStoreCsiDriver.targetRevision | string | `"1.4.0"` | [secrets-store-csi-driver Helm chart](https://github.com/kubernetes-sigs/secrets-store-csi-driver/blob/main/charts/secrets-store-csi-driver) version |
| secretsStoreCsiDriver.values | object | [upstream values](https://github.com/kubernetes-sigs/secrets-store-csi-driver/blob/main/charts/secrets-store-csi-driver/values.yaml) | Helm values |
| stackroxCentralServices | object | - | [StackRox central-services](https://www.stackrox.io/) ([example/stackrox.yaml)) |
| stackroxCentralServices.chart | string | `"stackrox-central-services"` | Chart |
| stackroxCentralServices.destination.namespace | string | `"infra-stackrox"` | Namespace |
| stackroxCentralServices.enabled | bool | `false` | Enable StackRox central-services |
| stackroxCentralServices.repoURL | string | [repo](https://charts.stackrox.io) | Repo URL |
| stackroxCentralServices.targetRevision | string | `"400.2.2"` | [stackrox/central-services Helm chart](https://github.com/stackrox/helm-charts/tree/main/opensource) version |
| stackroxCentralServices.values | object | [upstream values](https://github.com/stackrox/stackrox/blob/master/image/templates/helm/stackrox-central/values.yaml) | Helm values |
| stackroxSecuredClusterServices | object | - | [StackRox secured-cluster-services](https://www.stackrox.io/) ([example/stackrox.yaml)) |
| stackroxSecuredClusterServices.chart | string | `"stackrox-secured-cluster-services"` | Chart |
| stackroxSecuredClusterServices.destination.namespace | string | `"infra-stackrox"` | Namespace |
| stackroxSecuredClusterServices.enabled | bool | `false` | Enable StackRox secured-cluster-services |
| stackroxSecuredClusterServices.repoURL | string | [repo](https://charts.stackrox.io) | Repo URL |
| stackroxSecuredClusterServices.targetRevision | string | `"400.2.2"` | [stackrox/secured-cluster-services Helm chart](https://github.com/stackrox/helm-charts/tree/main/opensource) version |
| stackroxSecuredClusterServices.values | object | [upstream values](https://github.com/stackrox/stackrox/blob/master/image/templates/helm/stackrox-secured-cluster/values.yaml.htpl) | Helm values |
| vault | object | - | [vault](https://github.com/hashicorp/vault/) ([example](./examples/vault.yaml)) |
| vault.chart | string | `"vault"` | Chart |
| vault.destination.namespace | string | `"infra-vault"` | Namespace |
| vault.enabled | bool | `false` | Enable vault |
| vault.repoURL | string | [repo](https://helm.releases.hashicorp.com) | Repo URL |
| vault.targetRevision | string | `"0.27.0"` | [vault Helm chart](https://github.com/hashicorp/vault-helm) version |
| vault.values | object | [upstream values](https://github.com/hashicorp/vault-helm/tree/master/values.yaml) | Helm values |
| vaultMonitoring | object | - | [vault-monitoring](https://github.com/adfinis/helm-charts/tree/main/charts/vault-monitoring) ([example](./examples/vault-monitoring.yaml)) |
| vaultMonitoring.chart | string | `"vault-monitoring"` | Chart |
| vaultMonitoring.destination.namespace | string | `"infra-vault"` | Namespace |
| vaultMonitoring.enabled | bool | `false` | Enable vault-monitoring |
| vaultMonitoring.repoURL | string | [repo](https://charts.adfinis.com) | Repo URL |
| vaultMonitoring.targetRevision | string | `"0.2.*"` | [vault-monitoring Helm chart](https://github.com/adfinis/helm-charts/tree/main/charts/vault-monitoring) version |
| vaultMonitoring.values | object | [upstream values](https://github.com/adfinis/helm-charts/blob/main/charts/vault-monitoring/values.yaml) | Helm values |

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
