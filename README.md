# Adfinis Helm Charts

[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/adfinis)](https://artifacthub.io/packages/search?repo=adfinis)
![Release Charts](https://github.com/adfinis/helm-charts/workflows/Release%20Charts/badge.svg)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)

![Lunkwill wearing a Helm shirt](docs/images/lunkwill_helm_shirt.png)

This repository contains [Helm](https://helm.sh/) charts managed by [Adfinis](https://adfinis.com/?pk_campaign=github&pk_kwd=helm-charts).

## Usage

### Install the Helm chart repository

```bash
helm repo add adfinis https://charts.adfinis.com
```

### Install from GHCR OCI registry

The charts are also published to GitHub Container Registry as OCI Helm artifacts by the release workflow.

```bash
# Login using a GitHub token with read access
echo "$GHCR_TOKEN" | helm registry login -u <github-username> --password-stdin ghcr.io

# Pull a chart package from GHCR
helm pull oci://ghcr.io/adfinis/charts/<chart-name> --version <chart-version>

# Install from OCI directly
helm install <release-name> oci://ghcr.io/adfinis/charts/<chart-name> --version <chart-version>
```

### Install on OpenShift

To make the charts available in the OpenShift console:

```bash
oc apply -f https://charts.adfinis.com/adfinis-charts-repo.yaml
```

### Available Helm charts
#### [cert-manager-issuers](charts/cert-manager-issuers) chart

![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 1.x](https://img.shields.io/badge/app%20version-1.x-brightgreen)

Configure cert-manager Issuers and ClusterIssuers via Helm

[<img alt="cert-manager-issuers" src="https://raw.githubusercontent.com/adfinis/helm-charts/main/charts/cert-manager-issuers/logo.png" width="128">](charts/cert-manager-issuers)
#### [hedgedoc](charts/hedgedoc) chart

![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 1.1.x](https://img.shields.io/badge/app%20version-1.1.x-brightgreen)

Chart for HedgeDoc, a fork of CodiMD

[<img alt="hedgedoc" src="https://raw.githubusercontent.com/hedgedoc/hedgedoc-logo/main/LOGOTYPE/PNG/HedgeDoc-Logo%201.png" width="128">](charts/hedgedoc)
#### [keycloak-operator](charts/keycloak-operator) chart

![Version: 1.1.x](https://img.shields.io/badge/version-1.1.x-brightgreen) ![App version: 26..x](https://img.shields.io/badge/app%20version-26..x-brightgreen)

Deploy Keycloak Operator and Keycloak

[<img alt="keycloak-operator" src="https://www.keycloak.org/resources/images/logo-stacked.svg" width="128">](charts/keycloak-operator)
