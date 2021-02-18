{{/* vim: set filetype=mustache: */}}

{{/*
Common labels
*/}}
{{- define "csi-secret-provider-class.labels" -}}
helm.sh/chart: {{ include "common.chartref" . }}
{{ include "csi-secret-provider-class.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "csi-secret-provider-class.selectorLabels" -}}
app.kubernetes.io/name: {{ include "common.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
