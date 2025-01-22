{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "shlink.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "shlink.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "shlink.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "shlink.labels" -}}
helm.sh/chart: {{ include "shlink.chart" . }}
{{ include "shlink.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "shlink.selectorLabels" -}}
app.kubernetes.io/name: {{ include "shlink.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{/*
Create the name of the service account to use
*/}}
{{- define "shlink.serviceAccountName" -}}
{{- if .Values.serviceAccount.create -}}
    {{ default (include "shlink.fullname" .) .Values.serviceAccount.name }}
{{- else -}}
    {{ default "default" .Values.serviceAccount.name }}
{{- end -}}
{{- end -}}

{{/*
Name of the Secret that contains the PostgreSQL password
*/}}
{{- define "shlink.postgresql.secret" -}}
  {{- if .Values.postgresql.enabled }}
    {{- include "postgresql.secretName" .Subcharts.postgresql -}}
  {{- else if .Values.externalDatabase.existingSecretName }}
    {{- .Values.externalDatabase.existingSecretName }}
  {{- else }}
    {{- .Values.existingSecret | default (include "shlink.fullname" .) }}
  {{- end }}
{{- end }}

{{/*
Name of the key in Secret that contains the PostgreSQL password
*/}}
{{- define "shlink.postgresql.secretKey" -}}
  {{- if .Values.postgresql.enabled -}}
    {{- include "postgresql.userPasswordKey" .Subcharts.postgresql -}}
  {{- else if .Values.externalDatabase.existingSecretName -}}
    {{- .Values.externalDatabase.existingSecretKey -}}
  {{- else -}}
    password
  {{- end -}}
{{- end }}
