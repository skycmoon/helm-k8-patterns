{{- define "cluster-name" -}}
{{- if or (eq "dev-compute" .Values.cluster) (eq "default-compute" .Values.cluster) -}}
{{- printf "%s-i" .Values.cluster -}}
{{- else -}}
{{- .Values.cluster -}}
{{- end -}}
{{- end -}}