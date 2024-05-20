{{- define "runnerHealthchecker.username" -}}
{{- default (randAlphaNum 15) .Values.runnerHealthchecker.secret.RUNNER_HEALTHCHECKER_USERNAME | b64enc -}}
{{- end -}}

{{- define "runnerHealthchecker.password" -}}
{{- default (randAlphaNum 15) .Values.runnerHealthchecker.secret.RUNNER_HEALTHCHECKER_PASSWORD | b64enc -}}
{{- end -}}

{{- define "executor.username" -}}
{{- default (randAlphaNum 15) | b64enc -}}
{{- end -}}

{{- define "executor.password" -}}
{{- default (randAlphaNum 15) | b64enc -}}
{{- end -}}

{{- define "env" -}}
{{- default "production" | b64enc }}
{{- end -}}