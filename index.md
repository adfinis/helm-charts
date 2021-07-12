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
#### [cert-manager-issuers](https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/cert-manager-issuers)

![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 1.x](https://img.shields.io/badge/app%20version-1.x-brightgreen)

Configure cert-manager Issuers and ClusterIssuers via Helm

[<img alt="cert-manager-issuers" src="https://raw.githubusercontent.com/adfinis-sygroup/helm-charts/master/charts/cert-manager-issuers/logo.png" width="128">](https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/cert-manager-issuers)

#### more charts

| Chart | Description | Version |
| ----- | ----------- | ------- |
| [argoconfig](https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/argoconfig) | Configure Argo CD AppProjects and Applications | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) |
| [back8sup](https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/back8sup) | Deploy back8sup to a Kubernetes Cluster | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 0.x](https://img.shields.io/badge/app%20version-0.x-brightgreen) |
| [barman](https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/barman) | Chart for Barman PostgreSQL Backup and Recovery Manager | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 2.1.x](https://img.shields.io/badge/app%20version-2.1.x-brightgreen) |
| [caasperli](https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/caasperli) | Deploy Caasperli to a Kubernetes Cluster | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: latest](https://img.shields.io/badge/app%20version-latest-brightgreen) |
| [common](https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/common) | Common chartbuilding components and helpers, based on incubator/common | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 0.x](https://img.shields.io/badge/app%20version-0.x-brightgreen) |
| [csi-secret-provider-class](https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/csi-secret-provider-class) | A Helm chart to create a SecretProviderClass resource | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 0.x](https://img.shields.io/badge/app%20version-0.x-brightgreen) |
| [customer-center](https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/customer-center) | Chart for Customer-Center application | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 2.0.x](https://img.shields.io/badge/app%20version-2.0.x-brightgreen) |
| [huawei-csi-plugin](https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/huawei-csi-plugin) | Deploy the Huawei CSI plugin | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 2.2.x](https://img.shields.io/badge/app%20version-2.2.x-brightgreen) |
| [infra-apps](https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/infra-apps) | Argo CD app-of-apps config for infrastructure components | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 0.x](https://img.shields.io/badge/app%20version-0.x-brightgreen) |
| [logging-apps](https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/logging-apps) | Argo CD app-of-apps config for logging applications | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 0.x](https://img.shields.io/badge/app%20version-0.x-brightgreen) |
| [misc-apps](https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/misc-apps) | Argo CD app-of-apps config for miscellaneous small tools | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 0.x](https://img.shields.io/badge/app%20version-0.x-brightgreen) |
| [openshift-etcd-backup](https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/openshift-etcd-backup) | Chart for openshift-etcd-backup solution | ![Version: 1.3.x](https://img.shields.io/badge/version-1.3.x-brightgreen) ![App version: 1.3.x](https://img.shields.io/badge/app%20version-1.3.x-brightgreen) |
| [osschallenge](https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/osschallenge) | Chart for OSS-Challenge application | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: ed.x](https://img.shields.io/badge/app%20version-ed.x-brightgreen) |
| [rmd](https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/rmd) | Chart for Rmd.io application | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: ed.x](https://img.shields.io/badge/app%20version-ed.x-brightgreen) |
| [security-apps](https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/security-apps) | Argo CD app-of-apps config for security applications | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 0.x](https://img.shields.io/badge/app%20version-0.x-brightgreen) |
| [sentry-apps](https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/sentry-apps) | Sentry on premise | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 5.1.x](https://img.shields.io/badge/app%20version-5.1.x-brightgreen) |
| [storage-apps](https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/storage-apps) | Argo CD app-of-apps config for storage applications | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 0.x](https://img.shields.io/badge/app%20version-0.x-brightgreen) |
| [timed](https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/timed) | Chart for Timed application | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 1.1.x](https://img.shields.io/badge/app%20version-1.1.x-brightgreen) |
| [tracing-apps](https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/tracing-apps) | Argo CD app-of-apps config for tracing applications | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 0.x](https://img.shields.io/badge/app%20version-0.x-brightgreen) |
| [vault-auth](https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/vault-auth) | A helm chart to install the vault-auth serviceaccount for enabling vault's ku... | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 0.x](https://img.shields.io/badge/app%20version-0.x-brightgreen) |
| [vault-csi-provider](https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/vault-csi-provider) | A helm chart to install the vault secrets-store-csi-driver | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 0.x](https://img.shields.io/badge/app%20version-0.x-brightgreen) |
| [vault-monitoring](https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/vault-monitoring) | monitor your vault server from within Kubernetes' prometheus | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 0.x](https://img.shields.io/badge/app%20version-0.x-brightgreen) |

## Contributing


This Helm chart repositories code may be found on [GitHub](https://github.com) at
[adfinis-sygroup/helm-charts](https://github.com/adfinis-sygroup/helm-charts).

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
