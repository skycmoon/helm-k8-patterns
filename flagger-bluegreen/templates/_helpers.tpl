{{- define "env-name" -}}
{{- if and (eq "dev-compute" .Values.cluster) (eq "test" .Values.environment) -}}
{{- print "dev" -}}
{{- else -}}
{{- .Values.environment -}}
{{- end -}}
{{- end -}}