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
| Chart | Description | Chart Version | App Version |
| ----- | ----------- | ------------- | ----------- |
| [argoconfig](https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/argoconfig) | Configure an Argo CD AppProject and Application | `0.x` | `latest` |
| [barman](https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/barman) | Chart for Barman PostgreSQL Backup and Recovery Manager | `0.x` | `2.1.x` |
| [caasperli](https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/caasperli) | Deploy Caasperli to a Kubernetes Cluster | `0.x` | `latest` |
| [kasperleyn](https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/kasperleyn) | A Helm 2 chart to deploy Caasperli | `0.x` | `1.0.x` |
| [timed](https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/timed) | Chart for Timed application | `0.x` | `0.x` |

## Contributing

This Helm chart repositories code may be found on [GitHub](https://github.com) at
[adfinis-sygroup/helm-charts](https://github.com/adfinis-sygroup/helm-charts).

We track issues with this chart repository in the [issue tracker](https://github.com/adfinis-sygroup/helm-charts/issues).

## About this repository

Adfinis fights for a software world that is more open, where the quality is
better and where software must be accessible to everyone. This repository
contains part of the action behind this comitment. Feel free to
[contact](https://adfinis.com/kontakt/?pk_campaign=github&pk_kwd=helm-charts)
us if you have any questions.

## License

This Helm chart collection is free software: you can redistribute it and/or modify it under the terms
of the GNU Affero General Public License as published by the Free Software Foundation,
version 3 of the License.
