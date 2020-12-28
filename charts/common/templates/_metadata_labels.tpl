{{- /*
common.labels.standard prints the standard Helm labels.

The standard labels are frequently used in metadata.
*/ -}}
{{- define "common.labels.standard" -}}
helm.sh/chart: {{ template "common.chartref" . }}
app.kubernetes.io/app: {{ template "common.name" . }}
app.kubernetes.io/managed-by: {{ .Release.Service | quote }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
{{- end -}}
