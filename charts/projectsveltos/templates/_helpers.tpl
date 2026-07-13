{{/*
Expand the name of the chart.
*/}}
{{- define "projectsveltos.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "projectsveltos.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "projectsveltos.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "projectsveltos.labels" -}}
helm.sh/chart: {{ include "projectsveltos.chart" . }}
{{ include "projectsveltos.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- with .Values.global.additionalLabels }}
{{ toYaml . | indent 0 }}
{{- end }}
{{- end }}

{{/*
Merge a component's serviceAccount.annotations with global.serviceAccountAnnotations
(e.g. for cloud Workload Identity), with the component-specific annotations taking
precedence on key collisions.
Usage: {{ include "projectsveltos.serviceAccountAnnotations" (dict "root" $ "specific" .Values.addonController.serviceAccount.annotations) }}
*/}}
{{- define "projectsveltos.serviceAccountAnnotations" -}}
{{- $specific := .specific | default dict }}
{{- $common := .root.Values.global.serviceAccountAnnotations | default dict }}
{{- toYaml (merge $specific $common) }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "projectsveltos.selectorLabels" -}}
app.kubernetes.io/name: {{ include "projectsveltos.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "projectsveltos.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "projectsveltos.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Render extra volume mounts from a list of extraVolumes entries.
*/}}
{{- define "projectsveltos.extraVolumeMounts" -}}
{{- range . }}
- name: {{ .name }}
  mountPath: {{ .mountPath }}
  {{- with .subPath }}
  subPath: {{ . }}
  {{- end }}
  {{- with .readOnly }}
  readOnly: {{ . }}
  {{- end }}
{{- end }}
{{- end }}

{{/*
Render extra volumes from a list of extraVolumes entries.
*/}}
{{- define "projectsveltos.extraVolumes" -}}
{{- range . }}
- name: {{ .name }}
  {{- with .configMap }}
  configMap:
{{ toYaml . | nindent 4 }}
  {{- end }}
  {{- with .secret }}
  secret:
{{ toYaml . | nindent 4 }}
  {{- end }}
{{- end }}
{{- end }}

{{/*
Image helper
*/}}
{{- define "projectsveltos.image" -}}
{{- .component.image.registry | default .ctx.Values.global.registry -}}/{{- .component.image.repository -}}
{{- if .ctx.Values.global.useDigest }}@{{ .component.image.digest }}{{- else }}:{{- .component.image.tag | default .ctx.Chart.AppVersion -}}{{- end }}
{{- end }}
