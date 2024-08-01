{{- define "front-end.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "front-end.fullname" -}}
{{- printf "%s-%s" (include "front-end.name" .) .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
