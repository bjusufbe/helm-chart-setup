{{/*
Common resources
*/}}
{{- define "example-chart.commonResources" -}}
resources:
  limits:
    cpu: {{ .resources.limitCpu }}
    memory: {{ .resources.limitMemory }}
  requests:
    cpu: {{ .resources.requestCpu }}
    memory: {{ .resources.requestMemory }}
{{- end -}}

{{/*
Common liveness probe
*/}}
{{- define "example-chart.commonLivenessProbe" -}}
livenessProbe:
  httpGet:
    path: {{ .livenessProbe.httpPath }}
    port: {{ .livenessProbe.httpPort }}
{{- end -}}

{{/*
Common readiness probe
*/}}
{{- define "example-chart.commonReadinessProbe" -}}
readinessProbe:
  httpGet:
    path: {{ .readinessProbe.httpPath }}
    port: {{ .readinessProbe.httpPort }}
{{- end -}}