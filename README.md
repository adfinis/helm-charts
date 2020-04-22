# Deploy a Caasperli to you favourite platform in style

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

This project uses pre-commit to automate some tasks like generating README
files.

#### pre-commit requirements

* [helm-docs](https://github.com/norwoodj/helm-docs)

#### pre-commit configuration

```bash
pre-commit install
pre-commit install-hooks
```
