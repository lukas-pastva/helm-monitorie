{{/*
Expand the name of the chart.
*/}}
{{- define "helmMonitorie.name" -}}
{{- default .Chart.Name .Values.nameOverride | trimSuffix "-" | trunc 63 }}
{{- end }}

{{/*
Check if a list contains a value
*/}}
{{- define "listContains" -}}
  {{- $value := .value -}}
  {{- $list := .list -}}
  {{- $found := false -}}
  {{- range $list -}}
    {{- if eq . $value -}}
      {{- $found = true -}}
    {{- end -}}
  {{- end -}}
  {{- $found -}}
{{- end -}}
