# Adfinis Helm Charts
{{- $readme := (ds "readme") -}}
{{- define "helmcharts.shortVersion" -}}
  {{/*
    helmcharts.shortVersion template generates human readable generalized version strings.

    Given the input "0.1.2" is will generate "0.x", given "1.2.3" it will generate "1.2.x" and to on.
  */}}
  {{- $version := . | conv.ToString | strings.TrimPrefix "v" -}}
  {{- if eq $version "latest" -}}
    {{/* ignore latest version when shortening */}}
    {{- $version -}}
  {{- else -}}
    {{/* output important part of version and trailing .x */}}
    {{- $targetParts := 1 -}}
    {{- if not ($version | strings.HasPrefix "0") -}}
      {{/* handle production version (ie. not starting with 0) */}}
      {{- $targetParts = 2 -}}
    {{- end -}}
    {{- $shortLen := add ($version | strings.SplitN "." $targetParts | len) (sub $targetParts 1) | conv.ToInt -}}
    {{- strings.Trunc $shortLen $version }}.x
  {{- end -}}
{{- end }}

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

{{- range (file.ReadDir "charts/" | sort) -}}
{{- $chartManifestPath := print "charts/" . "/Chart.yaml" -}}
{{- if (file.Exists $chartManifestPath) -}}{{- $chartManifest := file.Read $chartManifestPath | data.YAML -}}
{{- if has $chartManifest "icon" }}
#### [{{.}}]({{ print $readme.chartBaseURL . }})

![Version: {{ template "helmcharts.shortVersion" $chartManifest.version }}](https://img.shields.io/badge/version-{{ template "helmcharts.shortVersion" $chartManifest.version }}-brightgreen)
![App version: {{ template "helmcharts.shortVersion" $chartManifest.appVersion }}](https://img.shields.io/badge/app%20version-{{ template "helmcharts.shortVersion" $chartManifest.appVersion }}-brightgreen)

{{ $chartManifest.description }}

[![{{.}}]({{ $chartManifest.icon }})]({{ print $readme.chartBaseURL . }})
{{- end -}}
{{- end -}}
{{- end }}

#### more charts

| Chart | Description | Chart Version | App Version |
| ----- | ----------- | ------------- | ----------- |
{{- range (file.ReadDir "charts/" | sort) -}}
{{- $chartManifestPath := print "charts/" . "/Chart.yaml" -}}
{{- if (file.Exists $chartManifestPath) -}}{{- $chartManifest := file.Read $chartManifestPath | data.YAML -}}
{{- if not (has $chartManifest "icon") }}
| [{{.}}]({{ print $readme.chartBaseURL . }}) | {{ $chartManifest.description | strings.Abbrev 80 }} | `{{ template "helmcharts.shortVersion" $chartManifest.version }}` | `{{ template "helmcharts.shortVersion" $chartManifest.appVersion }}` |
{{- end -}}
{{- end -}}
{{- end }}

{{- if not $readme.web.enabled }}
{{/* This content only shows up on the GitHUb README and not on charts.adfinis.com */}}
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
{{- else }}
{{/* This content replaces the Development section when used as index page */}}
## Contributing

This Helm chart repositories code may be found on [GitHub](https://github.com) at
[adfinis-sygroup/helm-charts](https://github.com/adfinis-sygroup/helm-charts).

We track issues with this chart repository in the [issue tracker](https://github.com/adfinis-sygroup/helm-charts/issues).
{{- end }}

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
