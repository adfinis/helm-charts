# azure-apps

![Version: 0.13.1](https://img.shields.io/badge/Version-0.13.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square)

Argo CD app-of-apps config for Azure applications

**Homepage:** <https://github.com/adfinis/helm-charts/tree/main/charts/azure-apps>

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
| azureKvCsiProvider | object | - | [secrets-store-csi-driver-provider-azure](https://github.com/Azure/secrets-store-csi-driver-provider-azure) ([example](./examples/secrets-store-csi-driver-provider-azure.yaml)) |
| azureKvCsiProvider.chart | string | `"csi-secrets-store-provider-azure"` | Chart |
| azureKvCsiProvider.destination.namespace | string | `"kube-system"` | Namespace |
| azureKvCsiProvider.enabled | bool | `false` | Enable secrets-store-csi-driver-provider-azure |
| azureKvCsiProvider.repoURL | string | [repo](https://azure.github.io/secrets-store-csi-driver-provider-azure/charts) | Repo URL |
| azureKvCsiProvider.targetRevision | string | `"1.4.1"` | [csi-secrets-store-provider-azure Helm chart](https://github.com/Azure/secrets-store-csi-driver-provider-azure/tree/master/charts/csi-secrets-store-provider-azure) version |
| azureKvCsiProvider.values | object | [upstream values](https://github.com/Azure/secrets-store-csi-driver-provider-azure/blob/master/charts/csi-secrets-store-provider-azure/values.yaml) | Helm values |
| azureWorkloadIdentityWebhook | object | `{"chart":"azure-workload-identity-webhook","destination":{"namespace":"azure-workload-identity-system"},"enabled":false,"name":"azure-workload-identity-webhook","repoURL":"https://azure.github.io/azure-workload-identity/charts","targetRevision":"0.12.0","values":{}}` | [azure-workload-identity](https://azure.github.io/azure-workload-identity) ([example](./examples/azure-workload-identity-webhook.yaml)) # @default -- - |
| azureWorkloadIdentityWebhook.chart | string | `"azure-workload-identity-webhook"` | Chart |
| azureWorkloadIdentityWebhook.destination.namespace | string | `"azure-workload-identity-system"` | Namespace |
| azureWorkloadIdentityWebhook.enabled | bool | `false` | Enable azure-workload-identity webhook |
| azureWorkloadIdentityWebhook.repoURL | string | [repo](https://azure.github.io/azure-workload-identity/charts) | Repo URL |
| azureWorkloadIdentityWebhook.targetRevision | string | `"0.12.0"` | [azure-workload-identity-webhook Helm chart](https://github.com/Azure/azure-workload-identity/tree/main/charts/workload-identity-webhook) version |
| azureWorkloadIdentityWebhook.values | object | [upstream values](https://github.com/adfinis/helm-charts/blob/main/charts/azure-apps/values.yaml) | Helm values |
| promitorResourceDiscovery | object | - | [promitor](https://promitor.io/) resource discovery ([example](./examples/promitor.yaml)) |
| promitorResourceDiscovery.chart | string | `"promitor-agent-resource-discovery"` | Chart |
| promitorResourceDiscovery.destination.namespace | string | `"infra-promitor"` | Namespace |
| promitorResourceDiscovery.enabled | bool | `false` | Enable promitor resource discovery |
| promitorResourceDiscovery.repoURL | string | [repo](https://charts.promitor.io) | Repo URL |
| promitorResourceDiscovery.targetRevision | string | `"0.11.0"` | [promitor-agent-resource-discovery Helm chart](https://github.com/promitor/charts/tree/main/promitor-agent-resource-discovery) version |
| promitorResourceDiscovery.values | object | [upstream values](https://github.com/promitor/charts/blob/main/promitor-agent-resource-discovery/values.yaml) | Helm values |
| promitorScraper | object | - | [promitor](https://promitor.io/) scraper ([example](./examples/promitor.yaml)) |
| promitorScraper.chart | string | `"promitor-agent-scraper"` | Chart |
| promitorScraper.destination.namespace | string | `"infra-promitor"` | Namespace |
| promitorScraper.enabled | bool | `false` | Enable promitor scraper |
| promitorScraper.repoURL | string | [repo](https://charts.promitor.io) | Repo URL |
| promitorScraper.targetRevision | string | `"2.12.0"` | [promitor-agent-scraper Helm chart](https://github.com/promitor/charts/tree/main/promitor-agent-scraper) version |
| promitorScraper.values | object | [upstream values](https://github.com/promitor/charts/blob/main/promitor-agent-scraper/values.yaml) | Helm values |

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
