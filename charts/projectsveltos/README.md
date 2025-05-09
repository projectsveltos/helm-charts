# projectsveltos

![Version: 0.53.1](https://img.shields.io/badge/Version-0.53.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.53.0](https://img.shields.io/badge/AppVersion-0.53.0-informational?style=flat-square)

Projectsveltos helm chart for Kubernetes

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| global.registry | string | `"docker.io"` |  |
| global.useDigest | bool | `false` |  |
| global.capiOnboardAnnotation | string | `""` |  |
| global.imagePullSecrets | list | `[]` |  |
| global.additionalLabels | object | `{}` |  |
| accessManager.annotations | object | `{}` |  |
| accessManager.labels | object | `{}` |  |
| accessManager.manager.args[0] | string | `"--diagnostics-address=:8443"` |  |
| accessManager.manager.args[1] | string | `"--v=5"` |  |
| accessManager.manager.extraArgs | object | `{}` |  |
| accessManager.manager.extraEnv | list | `[]` |  |
| accessManager.manager.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| accessManager.manager.containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| accessManager.manager.image.repository | string | `"projectsveltos/access-manager"` |  |
| accessManager.manager.image.tag | string | `"v0.53.0"` |  |
| accessManager.manager.image.digest | string | `"sha256:5d96342408d9607a41ed07112827206f91b6dfb46dbd8bb936631538171c22d7"` |  |
| accessManager.manager.resources.limits.cpu | string | `"500m"` |  |
| accessManager.manager.resources.limits.memory | string | `"512Mi"` |  |
| accessManager.manager.resources.requests.cpu | string | `"10m"` |  |
| accessManager.manager.resources.requests.memory | string | `"128Mi"` |  |
| accessManager.nodeSelector | object | `{}` |  |
| accessManager.podSecurityContext.runAsNonRoot | bool | `true` |  |
| accessManager.tolerations | list | `[]` |  |
| accessManager.serviceAccount.annotations | object | `{}` |  |
| addonController.annotations | object | `{}` |  |
| addonController.labels | object | `{}` |  |
| addonController.controller.args[0] | string | `"--diagnostics-address=:8443"` |  |
| addonController.controller.args[1] | string | `"--report-mode=0"` |  |
| addonController.controller.args[2] | string | `"--shard-key="` |  |
| addonController.controller.args[3] | string | `"--v=5"` |  |
| addonController.controller.args[4] | string | `"--version=v0.53.0"` |  |
| addonController.controller.extraArgs | object | `{}` |  |
| addonController.controller.argsAgentMgmtCluster[0] | string | `"--diagnostics-address=:8443"` |  |
| addonController.controller.argsAgentMgmtCluster[1] | string | `"--report-mode=0"` |  |
| addonController.controller.argsAgentMgmtCluster[2] | string | `"--shard-key="` |  |
| addonController.controller.argsAgentMgmtCluster[3] | string | `"--v=5"` |  |
| addonController.controller.argsAgentMgmtCluster[4] | string | `"--version=v0.53.0"` |  |
| addonController.controller.argsAgentMgmtCluster[5] | string | `"--agent-in-mgmt-cluster=true"` |  |
| addonController.controller.extraArgsAgentMgmtCluster | object | `{}` |  |
| addonController.controller.extraEnv | list | `[]` |  |
| addonController.controller.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| addonController.controller.containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| addonController.controller.containerSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| addonController.controller.image.repository | string | `"projectsveltos/addon-controller"` |  |
| addonController.controller.image.tag | string | `"v0.53.0"` |  |
| addonController.controller.image.digest | string | `"sha256:cdecdc7ffe7be6a4fc148e5f1f4b00d2df474ad96b85270199b1b1b2b9a6a564"` |  |
| addonController.controller.resources.requests.memory | string | `"512Mi"` |  |
| addonController.driftDetectionManagerPatchConfigMap.name | string | `"drift-detection-config"` |  |
| addonController.driftDetectionManagerPatchConfigMap.data | object | `{}` |  |
| addonController.podSecurityContext.runAsNonRoot | bool | `true` |  |
| addonController.ports[0].name | string | `"metrics"` |  |
| addonController.ports[0].port | int | `80` |  |
| addonController.ports[0].protocol | string | `"TCP"` |  |
| addonController.ports[0].targetPort | int | `8443` |  |
| addonController.nodeSelector | object | `{}` |  |
| addonController.tolerations | list | `[]` |  |
| addonController.serviceAccount.annotations | object | `{}` |  |
| addonController.type | string | `"ClusterIP"` |  |
| classifierManager.annotations | object | `{}` |  |
| classifierManager.labels | object | `{}` |  |
| classifierManager.agentPatchConfigMap.name | string | `"sveltos-agent-config"` |  |
| classifierManager.agentPatchConfigMap.data | object | `{}` |  |
| classifierManager.manager.args[0] | string | `"--diagnostics-address=:8443"` |  |
| classifierManager.manager.args[1] | string | `"--report-mode=0"` |  |
| classifierManager.manager.args[2] | string | `"--shard-key="` |  |
| classifierManager.manager.args[3] | string | `"--v=5"` |  |
| classifierManager.manager.args[4] | string | `"--version=v0.53.0"` |  |
| classifierManager.manager.extraArgs | object | `{}` |  |
| classifierManager.manager.argsAgentMgmtCluster[0] | string | `"--diagnostics-address=:8443"` |  |
| classifierManager.manager.argsAgentMgmtCluster[1] | string | `"--report-mode=0"` |  |
| classifierManager.manager.argsAgentMgmtCluster[2] | string | `"--shard-key="` |  |
| classifierManager.manager.argsAgentMgmtCluster[3] | string | `"--v=5"` |  |
| classifierManager.manager.argsAgentMgmtCluster[4] | string | `"--version=v0.53.0"` |  |
| classifierManager.manager.argsAgentMgmtCluster[5] | string | `"--agent-in-mgmt-cluster=true"` |  |
| classifierManager.manager.extraArgsAgentMgmtCluster | object | `{}` |  |
| classifierManager.manager.extraEnv | list | `[]` |  |
| classifierManager.manager.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| classifierManager.manager.containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| classifierManager.manager.image.repository | string | `"projectsveltos/classifier"` |  |
| classifierManager.manager.image.tag | string | `"v0.53.0"` |  |
| classifierManager.manager.image.digest | string | `"sha256:166f42a01af3035b08db9ceb29f8bb5fbbcab3e8aabf0c868fb9af3b5dddd65f"` |  |
| classifierManager.manager.resources.limits.cpu | string | `"500m"` |  |
| classifierManager.manager.resources.limits.memory | string | `"512Mi"` |  |
| classifierManager.manager.resources.requests.cpu | string | `"100m"` |  |
| classifierManager.manager.resources.requests.memory | string | `"128Mi"` |  |
| classifierManager.nodeSelector | object | `{}` |  |
| classifierManager.podSecurityContext.runAsNonRoot | bool | `true` |  |
| classifierManager.tolerations | list | `[]` |  |
| classifierManager.serviceAccount.annotations | object | `{}` |  |
| driftDetectionManager.serviceAccount.annotations | object | `{}` |  |
| eventManager.annotations | object | `{}` |  |
| eventManager.labels | object | `{}` |  |
| eventManager.manager.args[0] | string | `"--diagnostics-address=:8443"` |  |
| eventManager.manager.args[1] | string | `"--shard-key="` |  |
| eventManager.manager.args[2] | string | `"--v=5"` |  |
| eventManager.manager.args[3] | string | `"--version=v0.53.0"` |  |
| eventManager.manager.extraArgs | object | `{}` |  |
| eventManager.manager.argsAgentMgmtCluster[0] | string | `"--diagnostics-address=:8443"` |  |
| eventManager.manager.argsAgentMgmtCluster[1] | string | `"--shard-key="` |  |
| eventManager.manager.argsAgentMgmtCluster[2] | string | `"--v=5"` |  |
| eventManager.manager.argsAgentMgmtCluster[3] | string | `"--version=v0.53.0"` |  |
| eventManager.manager.argsAgentMgmtCluster[4] | string | `"--agent-in-mgmt-cluster=true"` |  |
| eventManager.manager.extraArgsAgentMgmtCluster | object | `{}` |  |
| eventManager.manager.extraEnv | list | `[]` |  |
| eventManager.manager.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| eventManager.manager.containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| eventManager.manager.image.repository | string | `"projectsveltos/event-manager"` |  |
| eventManager.manager.image.tag | string | `"v0.53.0"` |  |
| eventManager.manager.image.digest | string | `"sha256:17d97e83f673d7cfd1722cf752d603fc6202d21057f4706d6b812b5ec61d5d44"` |  |
| eventManager.manager.resources.limits.cpu | string | `"500m"` |  |
| eventManager.manager.resources.limits.memory | string | `"512Mi"` |  |
| eventManager.manager.resources.requests.cpu | string | `"10m"` |  |
| eventManager.manager.resources.requests.memory | string | `"128Mi"` |  |
| eventManager.nodeSelector | object | `{}` |  |
| eventManager.podSecurityContext.runAsNonRoot | bool | `true` |  |
| eventManager.tolerations | list | `[]` |  |
| eventManager.serviceAccount.annotations | object | `{}` |  |
| hcManager.annotations | object | `{}` |  |
| hcManager.labels | object | `{}` |  |
| hcManager.manager.args[0] | string | `"--diagnostics-address=:8443"` |  |
| hcManager.manager.args[1] | string | `"--shard-key="` |  |
| hcManager.manager.args[2] | string | `"--v=5"` |  |
| hcManager.manager.args[3] | string | `"--version=v0.53.0"` |  |
| hcManager.manager.extraArgs | object | `{}` |  |
| hcManager.manager.argsAgentMgmtCluster[0] | string | `"--diagnostics-address=:8443"` |  |
| hcManager.manager.argsAgentMgmtCluster[1] | string | `"--shard-key="` |  |
| hcManager.manager.argsAgentMgmtCluster[2] | string | `"--v=5"` |  |
| hcManager.manager.argsAgentMgmtCluster[3] | string | `"--version=v0.53.0"` |  |
| hcManager.manager.argsAgentMgmtCluster[4] | string | `"--agent-in-mgmt-cluster=true"` |  |
| hcManager.manager.extraArgsAgentMgmtCluster | object | `{}` |  |
| hcManager.manager.extraEnv | list | `[]` |  |
| hcManager.manager.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| hcManager.manager.containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| hcManager.manager.image.repository | string | `"projectsveltos/healthcheck-manager"` |  |
| hcManager.manager.image.tag | string | `"v0.53.0"` |  |
| hcManager.manager.image.digest | string | `"sha256:db96e56bf809d374cced8dd950388525f8bf8a513a43e86ed7b6c4e0d33bdcec"` |  |
| hcManager.manager.resources.limits.cpu | string | `"500m"` |  |
| hcManager.manager.resources.limits.memory | string | `"512Mi"` |  |
| hcManager.manager.resources.requests.cpu | string | `"10m"` |  |
| hcManager.manager.resources.requests.memory | string | `"128Mi"` |  |
| hcManager.nodeSelector | object | `{}` |  |
| hcManager.podSecurityContext.runAsNonRoot | bool | `true` |  |
| hcManager.tolerations | list | `[]` |  |
| hcManager.serviceAccount.annotations | object | `{}` |  |
| kubernetesClusterDomain | string | `"cluster.local"` |  |
| registerMgmtCluster.serviceAccount.annotations | object | `{}` |  |
| registerMgmtClusterJob.backoffLimit | int | `4` |  |
| registerMgmtClusterJob.registerMgmtCluster.args[0] | string | `"--labels="` |  |
| registerMgmtClusterJob.registerMgmtCluster.args[1] | string | `"--service-account-token=false"` |  |
| registerMgmtClusterJob.registerMgmtCluster.extraArgs | object | `{}` |  |
| registerMgmtClusterJob.registerMgmtCluster.extraEnv | list | `[]` |  |
| registerMgmtClusterJob.registerMgmtCluster.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| registerMgmtClusterJob.registerMgmtCluster.containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| registerMgmtClusterJob.registerMgmtCluster.image.repository | string | `"projectsveltos/register-mgmt-cluster"` |  |
| registerMgmtClusterJob.registerMgmtCluster.image.tag | string | `"v0.53.0"` |  |
| registerMgmtClusterJob.registerMgmtCluster.image.digest | string | `"sha256:e7c1481458ced6a105c39e0222fb39e972864f79395ff5fd49435977a49bc077"` |  |
| registerMgmtClusterJob.registerMgmtCluster.imagePullPolicy | string | `"IfNotPresent"` |  |
| registerMgmtClusterJob.registerMgmtCluster.nodeSelector | object | `{}` |  |
| registerMgmtClusterJob.registerMgmtCluster.tolerations | list | `[]` |  |
| registerMgmtClusterJob.registerMgmtCluster.resources.requests.memory | string | `"128Mi"` |  |
| scManager.annotations | object | `{}` |  |
| scManager.labels | object | `{}` |  |
| scManager.manager.args[0] | string | `"--diagnostics-address=:8443"` |  |
| scManager.manager.args[1] | string | `"--shard-key="` |  |
| scManager.manager.args[2] | string | `"--v=5"` |  |
| scManager.manager.extraArgs | object | `{}` |  |
| scManager.manager.extraEnv | list | `[]` |  |
| scManager.manager.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| scManager.manager.containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| scManager.manager.image.repository | string | `"projectsveltos/sveltoscluster-manager"` |  |
| scManager.manager.image.tag | string | `"v0.53.0"` |  |
| scManager.manager.image.digest | string | `"sha256:d897dbb7831976d25a775ff9e25af5cd0e04c4d36ee412a98a5e89763733fc43"` |  |
| scManager.manager.resources.limits.cpu | string | `"500m"` |  |
| scManager.manager.resources.limits.memory | string | `"512Mi"` |  |
| scManager.manager.resources.requests.cpu | string | `"10m"` |  |
| scManager.manager.resources.requests.memory | string | `"128Mi"` |  |
| scManager.nodeSelector | object | `{}` |  |
| scManager.podSecurityContext.runAsNonRoot | bool | `true` |  |
| scManager.ports[0].name | string | `"metrics"` |  |
| scManager.ports[0].port | int | `80` |  |
| scManager.ports[0].protocol | string | `"TCP"` |  |
| scManager.ports[0].targetPort | int | `8443` |  |
| scManager.tolerations | list | `[]` |  |
| scManager.serviceAccount.annotations | object | `{}` |  |
| scManager.type | string | `"ClusterIP"` |  |
| shardController.annotations | object | `{}` |  |
| shardController.labels | object | `{}` |  |
| shardController.extraEnv | list | `[]` |  |
| shardController.manager.args[0] | string | `"--diagnostics-address=:8443"` |  |
| shardController.manager.args[1] | string | `"--v=5"` |  |
| shardController.manager.args[2] | string | `"--report-mode=0"` |  |
| shardController.manager.extraArgs | object | `{}` |  |
| shardController.manager.argsAgentMgmtCluster[0] | string | `"--diagnostics-address=:8443"` |  |
| shardController.manager.argsAgentMgmtCluster[1] | string | `"--report-mode=0"` |  |
| shardController.manager.argsAgentMgmtCluster[2] | string | `"--agent-in-mgmt-cluster=true"` |  |
| shardController.manager.argsAgentMgmtCluster[3] | string | `"--v=5"` |  |
| shardController.manager.extraArgsAgentMgmtCluster | object | `{}` |  |
| shardController.manager.extraEnv | list | `[]` |  |
| shardController.manager.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| shardController.manager.containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| shardController.manager.image.repository | string | `"projectsveltos/shard-controller"` |  |
| shardController.manager.image.tag | string | `"v0.53.0"` |  |
| shardController.manager.image.digest | string | `"sha256:fa02395a6ddcf57ba66ee919dc674657f56f20a8c784cee389ca8812dccc6747"` |  |
| shardController.manager.resources.limits.cpu | string | `"500m"` |  |
| shardController.manager.resources.limits.memory | string | `"512Mi"` |  |
| shardController.manager.resources.requests.cpu | string | `"10m"` |  |
| shardController.manager.resources.requests.memory | string | `"128Mi"` |  |
| shardController.nodeSelector | object | `{}` |  |
| shardController.podSecurityContext.runAsNonRoot | bool | `true` |  |
| shardController.tolerations | list | `[]` |  |
| shardController.serviceAccount.annotations | object | `{}` |  |
| techsupportController.annotations | object | `{}` |  |
| techsupportController.labels | object | `{}` |  |
| techsupportController.extraEnv | list | `[]` |  |
| techsupportController.controller.args[0] | string | `"--v=5"` |  |
| techsupportController.controller.extraArgs | object | `{}` |  |
| techsupportController.controller.extraEnv | list | `[]` |  |
| techsupportController.controller.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| techsupportController.controller.containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| techsupportController.controller.image.repository | string | `"projectsveltos/techsupport"` |  |
| techsupportController.controller.image.tag | string | `"v0.53.0"` |  |
| techsupportController.controller.image.digest | string | `"sha256:d7bcb284ddc2fb6c8fbb1fadf2192586d616e35f6e19d687e083e40019c7a84e"` |  |
| techsupportController.controller.resources.limits.cpu | string | `"500m"` |  |
| techsupportController.controller.resources.limits.memory | string | `"1024Mi"` |  |
| techsupportController.controller.resources.requests.cpu | string | `"10m"` |  |
| techsupportController.controller.resources.requests.memory | string | `"128Mi"` |  |
| techsupportController.nodeSelector | object | `{}` |  |
| techsupportController.podSecurityContext.runAsNonRoot | bool | `true` |  |
| techsupportController.podSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| techsupportController.tolerations | list | `[]` |  |
| techsupportController.serviceAccount.annotations | object | `{}` |  |
| sveltosAgentManager.serviceAccount.annotations | object | `{}` |  |
| prometheus.enabled | bool | `false` |  |
| agent.managementCluster | bool | `false` |  |
| telemetry.disabled | bool | `false` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
