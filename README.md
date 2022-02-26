# Adfinis Helm Charts

![Release Charts](https://github.com/adfinis-sygroup/helm-charts/workflows/Release%20Charts/badge.svg)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)

![Lunkwill wearing a Helm shirt](docs/images/lunkwill_helm_shirt.png)

This repository contains [Helm](https://helm.sh/) charts managed by [Adfinis](https://adfinis.com/?pk_campaign=github&pk_kwd=helm-charts).

## Usage

### Install the Helm chart repository

```bash
helm repo add adfinis https://charts.adfinis.com
```

### Available Helm charts
#### [cert-manager-issuers](charts/cert-manager-issuers) chart

![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 1.x](https://img.shields.io/badge/app%20version-1.x-brightgreen)

Configure cert-manager Issuers and ClusterIssuers via Helm

[<img alt="cert-manager-issuers" src="https://raw.githubusercontent.com/adfinis-sygroup/helm-charts/master/charts/cert-manager-issuers/logo.png" width="128">](charts/cert-manager-issuers)
#### [rbacdefinitions](charts/rbacdefinitions) chart

![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 1b.x](https://img.shields.io/badge/app%20version-1b.x-brightgreen)

Deploy RBACDefinitions via Helm

[<img alt="rbacdefinitions" src="https://rbac-manager.docs.fairwinds.com/img/rbac-manager-logo.svg" width="128">](charts/rbacdefinitions)

#### Argo CD app-of-apps charts

Our [Argo CD](https://argoproj.github.io/cd/) app-of-apps Helm charts all implement the [Argo CD app-of-apps pattern](https://argo-cd.readthedocs.io/en/stable/operator-manual/cluster-bootstrapping/#app-of-apps-pattern).
The charts deploy Argo CD Application resources and enable configuring multiple related or "work well together" apps.
To do this they combine Helm repository URLs with chart names and "tested" versions of the charts. In most cases some
examples of how to configure individual apps are also provided. Please reference [our app-of-apps documentation](./docs/argocd-app-of-apps.md)
for more in-depth information.

| Chart | Description | Version |
| ----- | ----------- | ------- |
| [argo-apps](charts/argo-apps) | Argo CD app-of-apps config for various argo project components | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) |
| [azure-apps](charts/azure-apps) | Argo CD app-of-apps config for Azure applications | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) |
| [backup-apps](charts/backup-apps) | Argo CD app-of-apps config for backup components | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) |
| [infra-apps](charts/infra-apps) | Argo CD app-of-apps config for infrastructure components | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) |
| [logging-apps](charts/logging-apps) | Argo CD app-of-apps config for logging applications | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) |
| [misc-apps](charts/misc-apps) | Argo CD app-of-apps config for miscellaneous small tools | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) |
| [security-apps](charts/security-apps) | Argo CD app-of-apps config for security applications | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) |
| [storage-apps](charts/storage-apps) | Argo CD app-of-apps config for storage applications | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) |
| [tracing-apps](charts/tracing-apps) | Argo CD app-of-apps config for tracing applications | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) |

#### more charts

| Chart | Description | Version | App Version |
| ----- | ----------- | ------- | ----------- |
| [argoconfig](charts/argoconfig) | Configure Argo CD AppProjects an... | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) |  |
| [back8sup](charts/back8sup) | Deploy back8sup to a Kubernetes ... | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) |  ![App version: 0.x](https://img.shields.io/badge/app%20version-0.x-brightgreen) |
| [barman](charts/barman) | Chart for Barman PostgreSQL Back... | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) |  ![App version: 2.1.x](https://img.shields.io/badge/app%20version-2.1.x-brightgreen) |
| [caasperli](charts/caasperli) | Deploy Caasperli to a Kubernetes... | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) |  ![App version: latest](https://img.shields.io/badge/app%20version-latest-brightgreen) |
| [cert-manager-monitoring](charts/cert-manager-monitoring) | Monitor cert-manager with cert-m... | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) |  |
| [common](charts/common) | Common chartbuilding components ... | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) |  ![App version: 0.x](https://img.shields.io/badge/app%20version-0.x-brightgreen) |
| [csi-secret-provider-class](charts/csi-secret-provider-class) | A Helm chart to create a SecretP... | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) |  ![App version: 0.x](https://img.shields.io/badge/app%20version-0.x-brightgreen) |
| [customer-center](charts/customer-center) | Chart for Customer-Center applic... | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) |  ![App version: 3.2.x](https://img.shields.io/badge/app%20version-3.2.x-brightgreen) |
| [openshift-etcd-backup](charts/openshift-etcd-backup) | Chart for openshift-etcd-backup ... | ![Version: 1.6.x](https://img.shields.io/badge/version-1.6.x-brightgreen) |  ![App version: 1.6.x](https://img.shields.io/badge/app%20version-1.6.x-brightgreen) |
| [osschallenge](charts/osschallenge) | Chart for OSS-Challenge application | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) |  ![App version: ed.x](https://img.shields.io/badge/app%20version-ed.x-brightgreen) |
| [rmd](charts/rmd) | Chart for Rmd.io application | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) |  ![App version: ed.x](https://img.shields.io/badge/app%20version-ed.x-brightgreen) |
| [timed](charts/timed) | Chart for Timed application | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) |  ![App version: 1.4.x](https://img.shields.io/badge/app%20version-1.4.x-brightgreen) |
| [vault-auth](charts/vault-auth) | A helm chart to install the vaul... | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) |  ![App version: 0.x](https://img.shields.io/badge/app%20version-0.x-brightgreen) |
| [vault-monitoring](charts/vault-monitoring) | monitor your vault server from w... | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) |  |

## Contributing


Have a look at the [documentation](./docs/) to get started.

```bash
# clone repo
git clone git@github.com:adfinis-sygroup/helm-charts.git
cd helm-charts

# initialize pre-commit
pre-commit install
pre-commit install-hooks

# run pre-commit
pre-commit run -a

# update root README
hack/update-readme.sh

# update charts README
hack/helm-docs.sh
```

We track issues with this chart repository in the [issue tracker](https://github.com/adfinis-sygroup/helm-charts/issues).

## About this repository

Adfinis fights for a software world that is more open, where the quality is
better and where software must be accessible to everyone. This repository
contains part of the action behind this commitment. Feel free to
[contact](https://adfinis.com/kontakt/?pk_campaign=github&pk_kwd=helm-charts)
us if you have any questions.

## License

This Helm chart collection is free software: you can redistribute it and/or modify it under the terms
of the GNU Affero General Public License as published by the Free Software Foundation,
version 3 of the License.
