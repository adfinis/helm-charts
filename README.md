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

#### more charts

| Chart | Description | Version |
| ----- | ----------- | ------- |
| [argoconfig](charts/argoconfig) | Configure Argo CD AppProjects, Applications and more | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: latest](https://img.shields.io/badge/app%20version-latest-brightgreen) |
| [back8sup](charts/back8sup) | Deploy back8sup to a Kubernetes Cluster | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 0.x](https://img.shields.io/badge/app%20version-0.x-brightgreen) |
| [barman](charts/barman) | Chart for Barman PostgreSQL Backup and Recovery Manager | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 2.1.x](https://img.shields.io/badge/app%20version-2.1.x-brightgreen) |
| [caasperli](charts/caasperli) | Deploy Caasperli to a Kubernetes Cluster | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: latest](https://img.shields.io/badge/app%20version-latest-brightgreen) |
| [common](charts/common) | Common chartbuilding components and helpers, based on incubator/common | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 0.x](https://img.shields.io/badge/app%20version-0.x-brightgreen) |
| [kasperleyn](charts/kasperleyn) | A Helm 2 chart to deploy Caasperli | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 1.0.x](https://img.shields.io/badge/app%20version-1.0.x-brightgreen) |
| [timed](charts/timed) | Chart for Timed application | ![Version: 0.x](https://img.shields.io/badge/version-0.x-brightgreen) ![App version: 1.0.x](https://img.shields.io/badge/app%20version-1.0.x-brightgreen) |

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
