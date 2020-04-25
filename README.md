# Helm Charts for Caasperli

![Release Charts](https://github.com/hairmare/helm-caasperli/workflows/Release%20Charts/badge.svg) [![License: AGPL v3](https://img.shields.io/badge/License-AGPL%20v3-blue.svg)](https://www.gnu.org/licenses/agpl-3.0)

This repository contains [Helm](https://helm.sh/) charts that can be used to deploy [Caasperli](https://github.com/adfinis-sygroup/potz-holzoepfel-und-zipfelchape).

## Usage

```bash
helm repo add caasperli https://hairmare.github.io/helm-caasperli
# Deploy a Caasperli using helm 3
helm install caasperli/caasperli
```

### Helm 2 legacy chart

```bash
helm repo add caasperli https://hairmare.github.io/helm-caasperli
# Deploy a Caasperli using helm 2
helm install caasperli/kasperleyn
```

## Development

### pre-commit hook

This project uses [pre-commit](https://pre-commit.com/) to automate some tasks like
generating README files.

#### pre-commit requirements

* [helm-docs](https://github.com/norwoodj/helm-docs)

#### pre-commit configuration

```bash
pre-commit install
pre-commit install-hooks
```

## License

This application is free software: you can redistribute it and/or modify it under the terms
of the GNU Affero General Public License as published by the Free Software Foundation,
version 3 of the License.
