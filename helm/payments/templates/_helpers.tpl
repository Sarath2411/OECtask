{{- define "payments-api.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "payments-api.fullname" -}}
{{- printf "%s-%s" (include "payments-api.name" .) .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
