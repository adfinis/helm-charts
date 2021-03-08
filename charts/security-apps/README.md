# security-apps

![Version: 0.8.0](https://img.shields.io/badge/Version-0.8.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.8.0](https://img.shields.io/badge/AppVersion-0.8.0-informational?style=flat-square)

Argo CD app-of-apps config for security applications

**Homepage:** <https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/security-apps>

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
| dex | object | - | [dex](https://github.com/dexidp/dex/) ([example](./examples/dex.yaml)) |
| dex.chart | string | `"dex"` | Chart |
| dex.destination.namespace | string | `"infra-dex"` | Namespace |
| dex.enabled | bool | `false` | Enable dex |
| dex.repoURL | string | [repo](https://charts.helm.sh/stable/) | Repo URL |
| dex.targetRevision | string | `"2.15.*"` | [dex Helm chart](https://github.com/helm/charts/tree/master/stable/dex/) version |
| dex.values | object | [upstream values](https://github.com/helm/charts/tree/master/stable/dex/values.yaml) | Helm values |
| falco | object | - | [falco](https://github.com/falcosecurity/falco/) ([example](./examples/falco.yaml)) |
| falco.chart | string | `"falco"` | Chart |
| falco.destination.namespace | string | `"infra-falco"` | Namespace |
| falco.enabled | bool | `false` | Enable falco |
| falco.repoURL | string | [repo](https://falcosecurity.github.io/charts) | Repo URL |
| falco.targetRevision | string | `"1.7.*"` | [falco Helm chart](https://github.com/falcosecurity/charts/tree/master/falco) version |
| falco.values | object | [upstream values](https://github.com/falcosecurity/charts/blob/master/falco/values.yaml) | Helm values |
| falcoExporter | object | - | [falco-exporter](https://github.com/falcosecurity/falco-exporter/) ([example](./examples/falco-exporter.yaml)) |
| falcoExporter.chart | string | `"falco-exporter"` | Chart |
| falcoExporter.destination.namespace | string | `"infra-falco"` | Namespace |
| falcoExporter.enabled | bool | `false` | Enable falco-exporter |
| falcoExporter.repoURL | string | [repo](https://falcosecurity.github.io/charts) | Repo URL |
| falcoExporter.targetRevision | string | `"0.5.*"` | [falco Helm chart](https://github.com/falcosecurity/charts/tree/master/falco-exporter) version |
| falcoExporter.values | object | [upstream values](https://github.com/falcosecurity/charts/blob/master/falco-exporter/values.yaml) | Helm values |
| falcosidekick | object | - | [falcosidekick](https://github.com/falcosecurity/falcosidekick/) ([example](./examples/falcosidekick.yaml)) |
| falcosidekick.chart | string | `"falcosidekick"` | Chart |
| falcosidekick.destination.namespace | string | `"infra-falco"` | Namespace |
| falcosidekick.enabled | bool | `false` | Enable falcosidekick |
| falcosidekick.repoURL | string | [repo](https://falcosecurity.github.io/charts) | Repo URL |
| falcosidekick.targetRevision | string | `"0.2.*"` | [falcosidekick Helm chart](https://github.com/falcosecurity/charts/tree/master/falcosidekick) version |
| falcosidekick.values | object | [upstream values](https://github.com/falcosecurity/charts/blob/master/falcosidekick/values.yaml) | Helm values |
| gangway | object | - | [gangway](https://github.com/heptiolabs/gangway/) ([example](./examples/gangway.yaml)) |
| gangway.chart | string | `"gangway"` | Chart |
| gangway.destination.namespace | string | `"infra-gangway"` | Namespace |
| gangway.enabled | bool | `false` | Enable gangway |
| gangway.repoURL | string | [repo](https://charts.helm.sh/stable/) | Repo URL |
| gangway.targetRevision | string | `"0.4.*"` | [gangway Helm chart](https://github.com/helm/charts/tree/master/stable/gangway/) version |
| gangway.values | object | [upstream values](https://github.com/helm/charts/tree/master/stable/gangway/values.yaml) | Helm values |
| gatekeeper | object | - | [gatekeeper](https://github.com/open-policy-agent/gatekeeper) ([example](./examples/gatekeeper.yaml)) |
| gatekeeper.chart | string | `"gatekeeper"` | Chart |
| gatekeeper.destination.namespace | string | `"infra-gatekeeper"` | Namespace |
| gatekeeper.enabled | bool | `false` | Enable falco |
| gatekeeper.repoURL | string | [repo](https://open-policy-agent.github.io/gatekeeper/charts) | Repo URL |
| gatekeeper.targetRevision | string | `"3.2.2"` | [gatekeeper Helm chart](https://github.com/open-policy-agent/gatekeeper/tree/master/charts/gatekeeper) version |
| gatekeeper.values | object | [upstream values](https://github.com/open-policy-agent/gatekeeper/blob/master/charts/gatekeeper/values.yaml) | Helm values |
| vault | object | - | [vault](https://github.com/hashicorp/vault/) ([example](./examples/vault.yaml)) |
| vault.chart | string | `"vault"` | Chart |
| vault.destination.namespace | string | `"infra-vault"` | Namespace |
| vault.enabled | bool | `false` | Enable vault |
| vault.repoURL | string | [repo](https://helm.releases.hashicorp.com/) | Repo URL |
| vault.targetRevision | string | `"0.9.*"` | [vault Helm chart](https://github.com/hashicorp/vault-helm) version |
| vault.values | object | [upstream values](https://github.com/hashicorp/vault-helm/tree/master/values.yaml) | Helm values |
| vaultMonitoring | object | - | [vault-monitoring](https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/vault-monitoring) ([example](./examples/vault-monitoring.yaml)) |
| vaultMonitoring.chart | string | `"vault-monitoring"` | Chart |
| vaultMonitoring.enabled | bool | `false` | Enable vault-monitoring |
| vaultMonitoring.repoURL | string | [repo](https://charts.adfinis.com/vault-monitoring) | Repo URL |
| vaultMonitoring.targetRevision | string | `"0.1.*"` | [vault-monitoring Helm chart](https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/vault-monitoring) version |
| vaultMonitoring.values | object | [upstream values](https://github.com/adfinis-sygroup/helm-charts/blob/master/charts/vault-monitoring/values.yaml) | Helm values |

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
