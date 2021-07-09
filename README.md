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
#### [cert-manager-issuers](charts/cert-manager-issuers)

![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 1.x](https://img.shields.io/badge/app%20version-1.x-brightgreen)

Configure cert-manager Issuers and ClusterIssuers via Helm

[<img alt="cert-manager-issuers" src="https://raw.githubusercontent.com/adfinis-sygroup/helm-charts/master/charts/cert-manager-issuers/logo.png" width="128">](charts/cert-manager-issuers)

#### more charts

| Chart | Description | Version |
| ----- | ----------- | ------- |
| [argoconfig](charts/argoconfig) | Configure Argo CD AppProjects and Applications | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) |
| [back8sup](charts/back8sup) | Deploy back8sup to a Kubernetes Cluster | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 0.x](https://img.shields.io/badge/app%20version-0.x-brightgreen) |
| [barman](charts/barman) | Chart for Barman PostgreSQL Backup and Recovery Manager | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 2.1.x](https://img.shields.io/badge/app%20version-2.1.x-brightgreen) |
| [caasperli](charts/caasperli) | Deploy Caasperli to a Kubernetes Cluster | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: latest](https://img.shields.io/badge/app%20version-latest-brightgreen) |
| [common](charts/common) | Common chartbuilding components and helpers, based on incubator/common | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 0.x](https://img.shields.io/badge/app%20version-0.x-brightgreen) |
| [csi-secret-provider-class](charts/csi-secret-provider-class) | A Helm chart to create a SecretProviderClass resource | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 0.x](https://img.shields.io/badge/app%20version-0.x-brightgreen) |
| [customer-center](charts/customer-center) | Chart for Customer-Center application | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 2.0.x](https://img.shields.io/badge/app%20version-2.0.x-brightgreen) |
| [huawei-csi-plugin](charts/huawei-csi-plugin) | Deploy the Huawei CSI plugin | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 2.2.x](https://img.shields.io/badge/app%20version-2.2.x-brightgreen) |
| [infra-apps](charts/infra-apps) | Argo CD app-of-apps config for infrastructure components | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 0.x](https://img.shields.io/badge/app%20version-0.x-brightgreen) |
| [logging-apps](charts/logging-apps) | Argo CD app-of-apps config for logging applications | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 0.x](https://img.shields.io/badge/app%20version-0.x-brightgreen) |
| [misc-apps](charts/misc-apps) | Argo CD app-of-apps config for miscellaneous small tools | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 0.x](https://img.shields.io/badge/app%20version-0.x-brightgreen) |
| [openshift-etcd-backup](charts/openshift-etcd-backup) | Chart for openshift-etcd-backup solution | ![Version: 1.3.x](https://img.shields.io/badge/version-1.3.x-brightgreen) ![App version: 1.2.x](https://img.shields.io/badge/app%20version-1.2.x-brightgreen) |
| [osschallenge](charts/osschallenge) | Chart for OSS-Challenge application | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: ed.x](https://img.shields.io/badge/app%20version-ed.x-brightgreen) |
| [rmd](charts/rmd) | Chart for Rmd.io application | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: ed.x](https://img.shields.io/badge/app%20version-ed.x-brightgreen) |
| [security-apps](charts/security-apps) | Argo CD app-of-apps config for security applications | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 0.x](https://img.shields.io/badge/app%20version-0.x-brightgreen) |
| [sentry-apps](charts/sentry-apps) | Sentry on premise | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 5.1.x](https://img.shields.io/badge/app%20version-5.1.x-brightgreen) |
| [storage-apps](charts/storage-apps) | Argo CD app-of-apps config for storage applications | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 0.x](https://img.shields.io/badge/app%20version-0.x-brightgreen) |
| [timed](charts/timed) | Chart for Timed application | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 1.1.x](https://img.shields.io/badge/app%20version-1.1.x-brightgreen) |
| [tracing-apps](charts/tracing-apps) | Argo CD app-of-apps config for tracing applications | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 0.x](https://img.shields.io/badge/app%20version-0.x-brightgreen) |
| [vault-auth](charts/vault-auth) | A helm chart to install the vault-auth serviceaccount for enabling vault's ku... | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 0.x](https://img.shields.io/badge/app%20version-0.x-brightgreen) |
| [vault-csi-provider](charts/vault-csi-provider) | A helm chart to install the vault secrets-store-csi-driver | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 0.x](https://img.shields.io/badge/app%20version-0.x-brightgreen) |
| [vault-monitoring](charts/vault-monitoring) | monitor your vault server from within Kubernetes' prometheus | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 0.x](https://img.shields.io/badge/app%20version-0.x-brightgreen) |

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
