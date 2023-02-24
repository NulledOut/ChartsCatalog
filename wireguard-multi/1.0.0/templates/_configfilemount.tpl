{{- define "wireguard.configfile" -}}
{{- if and .Values.wg.configFileHostPath ( not .Values.wg.config.enable ) }}
enabled: true
type: hostPath
readOnly: false
hostPathType: ""
hostPath: {{ .Values.wg.configFileHostPath }}
mountPath: /etc/wireguard/
{{- end }}
{{- end -}}
