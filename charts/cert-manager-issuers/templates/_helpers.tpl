{{/* vim: set filetype=mustache: */}}
{{/*
Return the name of an Issuer or ClusterIssuer
*/}}
{{- define "cert-manager-issuers.name" -}}
{{- $name := include "common.name" .root }}
{{- with .data }}
{{- if .metadata }}
{{- if .metadata.name }}
{{- $name = .metadata.name }}
{{- end }}
{{- end }}
{{- if .name }}
{{- $name = .name }}
{{- end }}
{{- end }}
{{- $name }}
{{- end -}}

{{/*
Return a deepmerged metadata block based on common.metadata with local overrides.
*/}}
{{- define "cert-manager-issuers.metadata" -}}
{{- $metadata := (include "common.metadata" .root | fromYaml) }}
{{- $name := include "cert-manager-issuers.name" . }}
{{- if .data.metadata }}
{{- $metadata = mergeOverwrite $metadata (dict "metadata" .data.metadata) }}
{{- end }}
{{- mergeOverwrite $metadata (dict "metadata" (dict "name" $name)) | toYaml }}
{{- end }}
