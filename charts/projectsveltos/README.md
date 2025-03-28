# projectsveltos

![Version: 0.51.3](https://img.shields.io/badge/Version-0.51.3-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.51.1](https://img.shields.io/badge/AppVersion-0.51.1-informational?style=flat-square)

Projectsveltos helm chart for Kubernetes

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| global.registry | string | `"docker.io"` |  |
| global.useDigest | bool | `false` |  |
| global.capiOnboardAnnotation | string | `""` |  |
| global.imagePullSecrets | list | `[]` |  |
| accessManager.manager.args[0] | string | `"--diagnostics-address=:8443"` |  |
| accessManager.manager.args[1] | string | `"--v=5"` |  |
| accessManager.manager.extraArgs | object | `{}` |  |
| accessManager.manager.extraEnv | list | `[]` |  |
| accessManager.manager.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| accessManager.manager.containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| accessManager.manager.image.repository | string | `"projectsveltos/access-manager"` |  |
| accessManager.manager.image.tag | string | `"v0.51.1"` |  |
| accessManager.manager.image.digest | string | `"sha256:33bdb956857c2a43e62825e92dc057dc3f8cce86c5df8f9b98b7ad318b9f8426"` |  |
| accessManager.manager.resources.limits.cpu | string | `"500m"` |  |
| accessManager.manager.resources.limits.memory | string | `"512Mi"` |  |
| accessManager.manager.resources.requests.cpu | string | `"10m"` |  |
| accessManager.manager.resources.requests.memory | string | `"128Mi"` |  |
| accessManager.nodeSelector | object | `{}` |  |
| accessManager.podSecurityContext.runAsNonRoot | bool | `true` |  |
| accessManager.replicas | int | `1` |  |
| accessManager.tolerations | list | `[]` |  |
| accessManager.serviceAccount.annotations | object | `{}` |  |
| addonController.controller.args[0] | string | `"--diagnostics-address=:8443"` |  |
| addonController.controller.args[1] | string | `"--report-mode=0"` |  |
| addonController.controller.args[2] | string | `"--shard-key="` |  |
| addonController.controller.args[3] | string | `"--v=5"` |  |
| addonController.controller.args[4] | string | `"--version=v0.51.1"` |  |
| addonController.controller.extraArgs | object | `{}` |  |
| addonController.controller.argsAgentMgmtCluster[0] | string | `"--diagnostics-address=:8443"` |  |
| addonController.controller.argsAgentMgmtCluster[1] | string | `"--report-mode=0"` |  |
| addonController.controller.argsAgentMgmtCluster[2] | string | `"--agent-in-mgmt-cluster"` |  |
| addonController.controller.argsAgentMgmtCluster[3] | string | `"--shard-key="` |  |
| addonController.controller.argsAgentMgmtCluster[4] | string | `"--v=5"` |  |
| addonController.controller.argsAgentMgmtCluster[5] | string | `"--version=v0.51.1"` |  |
| addonController.controller.extraArgsAgentMgmtCluster | object | `{}` |  |
| addonController.controller.extraEnv | list | `[]` |  |
| addonController.controller.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| addonController.controller.containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| addonController.controller.containerSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| addonController.controller.image.repository | string | `"projectsveltos/addon-controller"` |  |
| addonController.controller.image.tag | string | `"v0.51.1"` |  |
| addonController.controller.image.digest | string | `"sha256:4e923fdcf288972be3ad1d740b69bfc7443c0492e471f393981fad752d987935"` |  |
| addonController.controller.resources.requests.memory | string | `"512Mi"` |  |
| addonController.driftDetectionManagerPatchConfigMap.name | string | `"drift-detection-config"` |  |
| addonController.driftDetectionManagerPatchConfigMap.data | object | `{}` |  |
| addonController.podSecurityContext.runAsNonRoot | bool | `true` |  |
| addonController.ports[0].name | string | `"metrics"` |  |
| addonController.ports[0].port | int | `80` |  |
| addonController.ports[0].protocol | string | `"TCP"` |  |
| addonController.ports[0].targetPort | int | `8443` |  |
| addonController.nodeSelector | object | `{}` |  |
| addonController.replicas | int | `1` |  |
| addonController.tolerations | list | `[]` |  |
| addonController.serviceAccount.annotations | object | `{}` |  |
| addonController.type | string | `"ClusterIP"` |  |
| classifierManager.agentPatchConfigMap.name | string | `"sveltos-agent-config"` |  |
| classifierManager.agentPatchConfigMap.data | object | `{}` |  |
| classifierManager.manager.args[0] | string | `"--diagnostics-address=:8443"` |  |
| classifierManager.manager.args[1] | string | `"--report-mode=0"` |  |
| classifierManager.manager.args[2] | string | `"--shard-key="` |  |
| classifierManager.manager.args[3] | string | `"--v=5"` |  |
| classifierManager.manager.args[4] | string | `"--version=v0.51.1"` |  |
| classifierManager.manager.extraArgs | object | `{}` |  |
| classifierManager.manager.argsAgentMgmtCluster[0] | string | `"--diagnostics-address=:8443"` |  |
| classifierManager.manager.argsAgentMgmtCluster[1] | string | `"--report-mode=0"` |  |
| classifierManager.manager.argsAgentMgmtCluster[2] | string | `"--agent-in-mgmt-cluster"` |  |
| classifierManager.manager.argsAgentMgmtCluster[3] | string | `"--shard-key="` |  |
| classifierManager.manager.argsAgentMgmtCluster[4] | string | `"--v=5"` |  |
| classifierManager.manager.argsAgentMgmtCluster[5] | string | `"--version=v0.51.1"` |  |
| classifierManager.manager.extraArgsAgentMgmtCluster | object | `{}` |  |
| classifierManager.manager.extraEnv | list | `[]` |  |
| classifierManager.manager.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| classifierManager.manager.containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| classifierManager.manager.image.repository | string | `"projectsveltos/classifier"` |  |
| classifierManager.manager.image.tag | string | `"v0.51.1"` |  |
| classifierManager.manager.image.digest | string | `"sha256:607531f2b6c503f3e9eb27aeabe16ca2aa530c9ca674ea389f47343b0a89b922"` |  |
| classifierManager.manager.resources.limits.cpu | string | `"500m"` |  |
| classifierManager.manager.resources.limits.memory | string | `"512Mi"` |  |
| classifierManager.manager.resources.requests.cpu | string | `"100m"` |  |
| classifierManager.manager.resources.requests.memory | string | `"128Mi"` |  |
| classifierManager.nodeSelector | object | `{}` |  |
| classifierManager.podSecurityContext.runAsNonRoot | bool | `true` |  |
| classifierManager.replicas | int | `1` |  |
| classifierManager.tolerations | list | `[]` |  |
| classifierManager.serviceAccount.annotations | object | `{}` |  |
| driftDetectionManager.serviceAccount.annotations | object | `{}` |  |
| eventManager.manager.args[0] | string | `"--diagnostics-address=:8443"` |  |
| eventManager.manager.args[1] | string | `"--shard-key="` |  |
| eventManager.manager.args[2] | string | `"--v=5"` |  |
| eventManager.manager.args[3] | string | `"--version=v0.51.1"` |  |
| eventManager.manager.extraArgs | object | `{}` |  |
| eventManager.manager.extraEnv | list | `[]` |  |
| eventManager.manager.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| eventManager.manager.containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| eventManager.manager.image.repository | string | `"projectsveltos/event-manager"` |  |
| eventManager.manager.image.tag | string | `"v0.51.1"` |  |
| eventManager.manager.image.digest | string | `"sha256:b79c922ada653dd7c96ac08d3210ad158417bb51d65a583fba529d04ddd191c5"` |  |
| eventManager.manager.resources.limits.cpu | string | `"500m"` |  |
| eventManager.manager.resources.limits.memory | string | `"512Mi"` |  |
| eventManager.manager.resources.requests.cpu | string | `"10m"` |  |
| eventManager.manager.resources.requests.memory | string | `"128Mi"` |  |
| eventManager.nodeSelector | object | `{}` |  |
| eventManager.podSecurityContext.runAsNonRoot | bool | `true` |  |
| eventManager.replicas | int | `1` |  |
| eventManager.tolerations | list | `[]` |  |
| eventManager.serviceAccount.annotations | object | `{}` |  |
| hcManager.manager.args[0] | string | `"--diagnostics-address=:8443"` |  |
| hcManager.manager.args[1] | string | `"--shard-key="` |  |
| hcManager.manager.args[2] | string | `"--v=5"` |  |
| hcManager.manager.args[3] | string | `"--version=v0.51.1"` |  |
| hcManager.manager.extraArgs | object | `{}` |  |
| hcManager.manager.extraEnv | list | `[]` |  |
| hcManager.manager.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| hcManager.manager.containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| hcManager.manager.image.repository | string | `"projectsveltos/healthcheck-manager"` |  |
| hcManager.manager.image.tag | string | `"v0.51.1"` |  |
| hcManager.manager.image.digest | string | `"sha256:418576ff01835707dd9aa115c47133abdeba7e6b3e2ca38240f516f6caf184d4"` |  |
| hcManager.manager.resources.limits.cpu | string | `"500m"` |  |
| hcManager.manager.resources.limits.memory | string | `"512Mi"` |  |
| hcManager.manager.resources.requests.cpu | string | `"10m"` |  |
| hcManager.manager.resources.requests.memory | string | `"128Mi"` |  |
| hcManager.nodeSelector | object | `{}` |  |
| hcManager.podSecurityContext.runAsNonRoot | bool | `true` |  |
| hcManager.replicas | int | `1` |  |
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
| registerMgmtClusterJob.registerMgmtCluster.image.tag | string | `"v0.51.1"` |  |
| registerMgmtClusterJob.registerMgmtCluster.image.digest | string | `"sha256:5115ba1715c8614058d23ff1551bda33fb28d92f41f00c9aca0fdb372393bb89"` |  |
| registerMgmtClusterJob.registerMgmtCluster.imagePullPolicy | string | `"IfNotPresent"` |  |
| registerMgmtClusterJob.registerMgmtCluster.nodeSelector | object | `{}` |  |
| registerMgmtClusterJob.registerMgmtCluster.tolerations | list | `[]` |  |
| registerMgmtClusterJob.registerMgmtCluster.resources.requests.memory | string | `"128Mi"` |  |
| scManager.manager.args[0] | string | `"--diagnostics-address=:8443"` |  |
| scManager.manager.args[1] | string | `"--shard-key="` |  |
| scManager.manager.args[2] | string | `"--v=5"` |  |
| scManager.manager.extraArgs | object | `{}` |  |
| scManager.manager.extraEnv | list | `[]` |  |
| scManager.manager.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| scManager.manager.containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| scManager.manager.image.repository | string | `"projectsveltos/sveltoscluster-manager"` |  |
| scManager.manager.image.tag | string | `"v0.51.1"` |  |
| scManager.manager.image.digest | string | `"sha256:6cb2023540aa29de3750e0bb25c84547a90e068e41d7720dbf0798e1bcc6423b"` |  |
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
| scManager.replicas | int | `1` |  |
| scManager.tolerations | list | `[]` |  |
| scManager.serviceAccount.annotations | object | `{}` |  |
| scManager.type | string | `"ClusterIP"` |  |
| shardController.extraEnv | list | `[]` |  |
| shardController.manager.args[0] | string | `"--diagnostics-address=:8443"` |  |
| shardController.manager.args[1] | string | `"--v=5"` |  |
| shardController.manager.args[2] | string | `"--report-mode=0"` |  |
| shardController.manager.extraArgs | object | `{}` |  |
| shardController.manager.argsAgentMgmtCluster[0] | string | `"--diagnostics-address=:8443"` |  |
| shardController.manager.argsAgentMgmtCluster[1] | string | `"--report-mode=0"` |  |
| shardController.manager.argsAgentMgmtCluster[2] | string | `"--agent-in-mgmt-cluster"` |  |
| shardController.manager.argsAgentMgmtCluster[3] | string | `"--v=5"` |  |
| shardController.manager.extraArgsAgentMgmtCluster | object | `{}` |  |
| shardController.manager.extraEnv | list | `[]` |  |
| shardController.manager.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| shardController.manager.containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| shardController.manager.image.repository | string | `"projectsveltos/shard-controller"` |  |
| shardController.manager.image.tag | string | `"v0.51.1"` |  |
| shardController.manager.image.digest | string | `"sha256:92b5fb76892594b044d711b84872326f25ddb3fe8e0e17658221038df8ff228f"` |  |
| shardController.manager.resources.limits.cpu | string | `"500m"` |  |
| shardController.manager.resources.limits.memory | string | `"512Mi"` |  |
| shardController.manager.resources.requests.cpu | string | `"10m"` |  |
| shardController.manager.resources.requests.memory | string | `"128Mi"` |  |
| shardController.nodeSelector | object | `{}` |  |
| shardController.podSecurityContext.runAsNonRoot | bool | `true` |  |
| shardController.replicas | int | `1` |  |
| shardController.tolerations | list | `[]` |  |
| shardController.serviceAccount.annotations | object | `{}` |  |
| techsupportController.extraEnv | list | `[]` |  |
| techsupportController.controller.args[0] | string | `"--v=5"` |  |
| techsupportController.controller.extraArgs | object | `{}` |  |
| techsupportController.controller.extraEnv | list | `[]` |  |
| techsupportController.controller.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| techsupportController.controller.containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| techsupportController.controller.image.repository | string | `"projectsveltos/techsupport"` |  |
| techsupportController.controller.image.tag | string | `"v0.51.1"` |  |
| techsupportController.controller.image.digest | string | `"sha256:f01fb81390bc4a76ce05db7794625cb15f522139e809b462643e442a31f97fe1"` |  |
| techsupportController.controller.resources.limits.cpu | string | `"500m"` |  |
| techsupportController.controller.resources.limits.memory | string | `"1024Mi"` |  |
| techsupportController.controller.resources.requests.cpu | string | `"10m"` |  |
| techsupportController.controller.resources.requests.memory | string | `"128Mi"` |  |
| techsupportController.nodeSelector | object | `{}` |  |
| techsupportController.podSecurityContext.runAsNonRoot | bool | `true` |  |
| techsupportController.podSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| techsupportController.replicas | int | `1` |  |
| techsupportController.tolerations | list | `[]` |  |
| techsupportController.serviceAccount.annotations | object | `{}` |  |
| sveltosAgentManager.serviceAccount.annotations | object | `{}` |  |
| prometheus.enabled | bool | `false` |  |
| agent.managementCluster | bool | `false` |  |
| telemetry.disabled | bool | `false` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
