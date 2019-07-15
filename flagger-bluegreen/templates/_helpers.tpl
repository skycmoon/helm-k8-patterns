{{/*{{- define "ingress.annotations" -}}*/}}
{{/*{{ if and (.Values.environment) (eq .Values.environment "local") }}*/}}
{{/*kubernetes.io/ingress.class: nginx*/}}
{{/*nginx.ingress.kubernetes.io/enable-cors: "true"*/}}
{{/*{{ else }}*/}}
{{/*kubernetes.io/ingress.class: traefik*/}}
{{/*{{ end }}*/}}
{{/*{{-end-}}*/}}
