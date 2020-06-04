# Adfinis Helm Charts

![Release Charts](https://github.com/adfinis-sygroup/helm-charts/workflows/Release%20Charts/badge.svg)

![Lunkwill wearing a Helm shirt](docs/images/lunkwill_helm_shirt.png)

This repository contains [Helm](https://helm.sh/) charts managed by [Adfinis](https://adfinis.com).

## Usage

### Install the Helm chart repository

```bash
helm repo add adfinis https://charts.adfinis.com
```

### Available Helm charts

| Chart | Description |
| ----- | ----------- |
{{- range (file.ReadDir "charts/" | sort) }}
{{- $chartManifestPath := print "charts/" . "/Chart.yaml" }}
{{ if (file.Exists $chartManifestPath) -}}
    {{- $chartManifest := file.Read $chartManifestPath | data.YAML -}}
| [{{.}}]({{print "charts/" .}}) | {{ $chartManifest.description }} |
{{- end }}
{{- end }}

## Development

### pre-commit hook

This project uses [pre-commit](https://pre-commit.com/) to automate some tasks like
generating README files.

#### pre-commit requirements

* [helm-docs](https://github.com/norwoodj/helm-docs)
* [gomplate](https://github.com/hairyhenderson/gomplate)

#### pre-commit configuration

After installing the pre-commit requirements you can initialize pre-commit.

```bash
pre-commit install
pre-commit install-hooks
```

## License

This Helm chart collection is free software: you can redistribute it and/or modify it under the terms
of the GNU Affero General Public License as published by the Free Software Foundation,
version 3 of the License.
