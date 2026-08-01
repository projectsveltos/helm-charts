# projectsveltos

![Version: 1.13.0](https://img.shields.io/badge/Version-1.13.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v1.13.0](https://img.shields.io/badge/AppVersion-v1.13.0-informational?style=flat-square)

Projectsveltos helm chart for Kubernetes

**Homepage:** <https://projectsveltos.github.io/helm-charts/>

## Maintainers

| Name | Email | URL |
| ---- | ------ | --- |
| Gianluca Mardente | <gianluca@projectsveltos.io> | <https://github.com/gianlucam76> |
| Jan-Otto Kröpke | <github@jkroepke.de> | <https://github.com/jkroepke> |

## Source Code

* <https://github.com/projectsveltos/>
* <https://github.com/projectsveltos/helm-charts>

## Requirements

Kubernetes: `>=1.25.0-0`

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| global.registry | string | `"docker.io"` |  |
| global.useDigest | bool | `false` |  |
| global.capiOnboardAnnotation | string | `""` |  |
| global.imagePullSecrets | list | `[]` |  |
| global.additionalLabels | object | `{}` |  |
| global.enableNatsWatcher | bool | `false` |  |
| global.serviceAccountAnnotations | object | `{}` |  |
| accessManager.enabled | bool | `true` |  |
| accessManager.annotations | object | `{}` |  |
| accessManager.labels | object | `{}` |  |
| accessManager.manager.args[0] | string | `"--diagnostics-address=:8443"` |  |
| accessManager.manager.args[1] | string | `"--v=5"` |  |
| accessManager.manager.extraArgs | object | `{}` |  |
| accessManager.manager.extraEnv | list | `[]` |  |
| accessManager.manager.extraVolumes | list | `[]` |  |
| accessManager.manager.containerSecurityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]}}` | The SecurityContext for the containers |
| accessManager.manager.image.registry | string | `""` | The Docker registry. Defaults to global.registry if empty. |
| accessManager.manager.image.repository | string | `"projectsveltos/access-manager"` | Docker image repository |
| accessManager.manager.image.tag | string | `"v1.13.0"` |  |
| accessManager.manager.image.digest | string | `"sha256:c8f9373c871f6ddf78d91b77a41007ddc4163b07d9314d0574b23276df34645f"` |  |
| accessManager.manager.resources | object | `{"limits":{"cpu":"500m","memory":"512Mi"},"requests":{"cpu":"10m","memory":"128Mi"}}` | Resource requests and limits |
| accessManager.nodeSelector | object | `{}` |  |
| accessManager.podSecurityContext | object | `{"runAsNonRoot":true,"seccompProfile":{"type":"RuntimeDefault"}}` | The SecurityContext for the pod |
| accessManager.tolerations | list | `[]` |  |
| accessManager.serviceAccount.annotations | object | `{}` |  |
| addonController.annotations | object | `{}` |  |
| addonController.labels | object | `{}` |  |
| addonController.initialization.image.registry | string | `""` | The Docker registry. Defaults to global.registry if empty. |
| addonController.initialization.image.repository | string | `"projectsveltos/addon-controller"` | Docker image repository |
| addonController.initialization.image.tag | string | `"v1.13.0"` |  |
| addonController.initialization.image.digest | string | `"sha256:f3980ba1d071546ce01965538b936d646d5cd5812ad1ae0f6cd91e9ca0023364"` |  |
| addonController.initialization.resources | object | `{"limits":{"cpu":"500m","memory":"512Mi"},"requests":{"cpu":"10m","memory":"128Mi"}}` | Resource requests and limits |
| addonController.controller.args[0] | string | `"--diagnostics-address=:8443"` |  |
| addonController.controller.args[1] | string | `"--report-mode=0"` |  |
| addonController.controller.args[2] | string | `"--shard-key="` |  |
| addonController.controller.args[3] | string | `"--v=5"` |  |
| addonController.controller.args[4] | string | `"--version=v1.13.0"` |  |
| addonController.controller.extraArgs | object | `{}` |  |
| addonController.controller.argsAgentMgmtCluster[0] | string | `"--diagnostics-address=:8443"` |  |
| addonController.controller.argsAgentMgmtCluster[1] | string | `"--report-mode=0"` |  |
| addonController.controller.argsAgentMgmtCluster[2] | string | `"--shard-key="` |  |
| addonController.controller.argsAgentMgmtCluster[3] | string | `"--v=5"` |  |
| addonController.controller.argsAgentMgmtCluster[4] | string | `"--version=v1.13.0"` |  |
| addonController.controller.argsAgentMgmtCluster[5] | string | `"--agent-in-mgmt-cluster=true"` |  |
| addonController.controller.extraArgsAgentMgmtCluster | object | `{}` |  |
| addonController.controller.extraEnv | list | `[]` |  |
| addonController.controller.extraVolumes | list | `[]` |  |
| addonController.controller.containerSecurityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"seccompProfile":{"type":"RuntimeDefault"}}` | The SecurityContext for the containers |
| addonController.controller.image.registry | string | `""` | The Docker registry. Defaults to global.registry if empty. |
| addonController.controller.image.repository | string | `"projectsveltos/addon-controller"` | Docker image repository |
| addonController.controller.image.tag | string | `"v1.13.0"` |  |
| addonController.controller.image.digest | string | `"sha256:f3980ba1d071546ce01965538b936d646d5cd5812ad1ae0f6cd91e9ca0023364"` |  |
| addonController.controller.resources | object | `{"requests":{"memory":"512Mi"}}` | Resource requests and limits |
| addonController.driftDetectionManagerPatchConfigMap.name | string | `"drift-detection-config"` |  |
| addonController.driftDetectionManagerPatchConfigMap.data | object | `{}` |  |
| addonController.podSecurityContext | object | `{"runAsNonRoot":true,"seccompProfile":{"type":"RuntimeDefault"}}` | The SecurityContext for the pod |
| addonController.ports[0].name | string | `"metrics"` |  |
| addonController.ports[0].port | int | `80` |  |
| addonController.ports[0].protocol | string | `"TCP"` |  |
| addonController.ports[0].targetPort | int | `8443` |  |
| addonController.nodeSelector | object | `{}` |  |
| addonController.tolerations | list | `[]` |  |
| addonController.serviceAccount.annotations | object | `{}` |  |
| addonController.type | string | `"ClusterIP"` |  |
| addonController.roleExtra.rules[0].apiGroups[0] | string | `""` |  |
| addonController.roleExtra.rules[0].resources | list | `["configmaps"]` | Resource requests and limits |
| addonController.roleExtra.rules[0].verbs[0] | string | `"get"` |  |
| addonController.roleExtra.rules[0].verbs[1] | string | `"list"` |  |
| addonController.roleExtra.rules[0].verbs[2] | string | `"create"` |  |
| addonController.roleExtra.rules[0].verbs[3] | string | `"update"` |  |
| addonController.clusterRoleExtra.rules | string | `nil` |  |
| addonController.serviceMonitor.additionalLabels | object | `{}` |  |
| classifierManager.annotations | object | `{}` |  |
| classifierManager.labels | object | `{}` |  |
| classifierManager.agentPatchConfigMap.name | string | `"sveltos-agent-config"` |  |
| classifierManager.agentPatchConfigMap.data | object | `{}` |  |
| classifierManager.agentPatchSveltosApplierConfigMap.name | string | `"sveltos-applier-config"` |  |
| classifierManager.agentPatchSveltosApplierConfigMap.data | object | `{}` |  |
| classifierManager.manager.args[0] | string | `"--diagnostics-address=:8443"` |  |
| classifierManager.manager.args[1] | string | `"--report-mode=0"` |  |
| classifierManager.manager.args[2] | string | `"--shard-key="` |  |
| classifierManager.manager.args[3] | string | `"--v=5"` |  |
| classifierManager.manager.args[4] | string | `"--version=v1.13.0"` |  |
| classifierManager.manager.extraArgs | object | `{}` |  |
| classifierManager.manager.argsAgentMgmtCluster[0] | string | `"--diagnostics-address=:8443"` |  |
| classifierManager.manager.argsAgentMgmtCluster[1] | string | `"--report-mode=0"` |  |
| classifierManager.manager.argsAgentMgmtCluster[2] | string | `"--shard-key="` |  |
| classifierManager.manager.argsAgentMgmtCluster[3] | string | `"--v=5"` |  |
| classifierManager.manager.argsAgentMgmtCluster[4] | string | `"--version=v1.13.0"` |  |
| classifierManager.manager.argsAgentMgmtCluster[5] | string | `"--agent-in-mgmt-cluster=true"` |  |
| classifierManager.manager.extraArgsAgentMgmtCluster | object | `{}` |  |
| classifierManager.manager.extraEnv | list | `[]` |  |
| classifierManager.manager.extraVolumes | list | `[]` |  |
| classifierManager.manager.containerSecurityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"seccompProfile":{"type":"RuntimeDefault"}}` | The SecurityContext for the containers |
| classifierManager.manager.image.registry | string | `""` | The Docker registry. Defaults to global.registry if empty. |
| classifierManager.manager.image.repository | string | `"projectsveltos/classifier"` | Docker image repository |
| classifierManager.manager.image.tag | string | `"v1.13.0"` |  |
| classifierManager.manager.image.digest | string | `"sha256:fb4c64861bd96ea01b5da5fc7c6015e83abdf7f0ba700cdeed0509a1df1abdb5"` |  |
| classifierManager.manager.resources | object | `{"limits":{"cpu":"500m","memory":"512Mi"},"requests":{"cpu":"100m","memory":"128Mi"}}` | Resource requests and limits |
| classifierManager.nodeSelector | object | `{}` |  |
| classifierManager.podSecurityContext | object | `{"runAsNonRoot":true,"seccompProfile":{"type":"RuntimeDefault"}}` | The SecurityContext for the pod |
| classifierManager.ports[0].name | string | `"metrics"` |  |
| classifierManager.ports[0].port | int | `80` |  |
| classifierManager.ports[0].protocol | string | `"TCP"` |  |
| classifierManager.ports[0].targetPort | int | `8443` |  |
| classifierManager.tolerations | list | `[]` |  |
| classifierManager.serviceAccount.annotations | object | `{}` |  |
| classifierManager.type | string | `"ClusterIP"` |  |
| classifierManager.serviceMonitor.additionalLabels | object | `{}` |  |
| clusterInventory.enabled | bool | `false` |  |
| clusterInventory.annotations | object | `{}` |  |
| clusterInventory.labels | object | `{}` |  |
| clusterInventory.manager.args[0] | string | `"--v=0"` |  |
| clusterInventory.manager.image.registry | string | `""` | The Docker registry. Defaults to global.registry if empty. |
| clusterInventory.manager.image.repository | string | `"projectsveltos/clusterinventory-controller"` | Docker image repository |
| clusterInventory.manager.image.tag | string | `"v1.13.0"` |  |
| clusterInventory.manager.image.digest | string | `"sha256:2b783d74679dd28b5271d0c205a8e73ee6c4b94fdeaeb1f8404e7aee02014c6b"` |  |
| clusterInventory.manager.imagePullPolicy | string | `"IfNotPresent"` |  |
| clusterInventory.manager.resources | object | `{"limits":{"cpu":"500m","memory":"512Mi"},"requests":{"cpu":"100m","memory":"256Mi"}}` | Resource requests and limits |
| clusterInventory.nodeSelector | object | `{}` |  |
| clusterInventory.podSecurityContext | object | `{"runAsNonRoot":true,"seccompProfile":{"type":"RuntimeDefault"}}` | The SecurityContext for the pod |
| clusterInventory.tolerations | list | `[]` |  |
| clusterInventory.extraVolumes | list | `[]` |  |
| clusterInventory.serviceAccount.annotations | object | `{}` |  |
| driftDetectionManager.serviceAccount.annotations | object | `{}` |  |
| eventManager.annotations | object | `{}` |  |
| eventManager.labels | object | `{}` |  |
| eventManager.manager.args[0] | string | `"--diagnostics-address=:8443"` |  |
| eventManager.manager.args[1] | string | `"--shard-key="` |  |
| eventManager.manager.args[2] | string | `"--v=5"` |  |
| eventManager.manager.args[3] | string | `"--version=v1.13.0"` |  |
| eventManager.manager.extraArgs | object | `{}` |  |
| eventManager.manager.argsAgentMgmtCluster[0] | string | `"--diagnostics-address=:8443"` |  |
| eventManager.manager.argsAgentMgmtCluster[1] | string | `"--shard-key="` |  |
| eventManager.manager.argsAgentMgmtCluster[2] | string | `"--v=5"` |  |
| eventManager.manager.argsAgentMgmtCluster[3] | string | `"--version=v1.13.0"` |  |
| eventManager.manager.argsAgentMgmtCluster[4] | string | `"--agent-in-mgmt-cluster=true"` |  |
| eventManager.manager.extraArgsAgentMgmtCluster | object | `{}` |  |
| eventManager.manager.extraEnv | list | `[]` |  |
| eventManager.manager.extraVolumes | list | `[]` |  |
| eventManager.manager.containerSecurityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"seccompProfile":{"type":"RuntimeDefault"}}` | The SecurityContext for the containers |
| eventManager.manager.image.registry | string | `""` | The Docker registry. Defaults to global.registry if empty. |
| eventManager.manager.image.repository | string | `"projectsveltos/event-manager"` | Docker image repository |
| eventManager.manager.image.tag | string | `"v1.13.0"` |  |
| eventManager.manager.image.digest | string | `"sha256:2c62722e4758d1ef74ff133ca0e91908ceadea2d4d690f05200e86d89b8a0df2"` |  |
| eventManager.manager.resources | object | `{"limits":{"cpu":"500m","memory":"512Mi"},"requests":{"cpu":"10m","memory":"128Mi"}}` | Resource requests and limits |
| eventManager.nodeSelector | object | `{}` |  |
| eventManager.podSecurityContext | object | `{"runAsNonRoot":true,"seccompProfile":{"type":"RuntimeDefault"}}` | The SecurityContext for the pod |
| eventManager.ports[0].name | string | `"metrics"` |  |
| eventManager.ports[0].port | int | `80` |  |
| eventManager.ports[0].protocol | string | `"TCP"` |  |
| eventManager.ports[0].targetPort | int | `8443` |  |
| eventManager.tolerations | list | `[]` |  |
| eventManager.serviceAccount.annotations | object | `{}` |  |
| eventManager.type | string | `"ClusterIP"` |  |
| eventManager.serviceMonitor.additionalLabels | object | `{}` |  |
| hcManager.annotations | object | `{}` |  |
| hcManager.labels | object | `{}` |  |
| hcManager.manager.args[0] | string | `"--diagnostics-address=:8443"` |  |
| hcManager.manager.args[1] | string | `"--shard-key="` |  |
| hcManager.manager.args[2] | string | `"--v=5"` |  |
| hcManager.manager.args[3] | string | `"--version=v1.13.0"` |  |
| hcManager.manager.extraArgs | object | `{}` |  |
| hcManager.manager.argsAgentMgmtCluster[0] | string | `"--diagnostics-address=:8443"` |  |
| hcManager.manager.argsAgentMgmtCluster[1] | string | `"--shard-key="` |  |
| hcManager.manager.argsAgentMgmtCluster[2] | string | `"--v=5"` |  |
| hcManager.manager.argsAgentMgmtCluster[3] | string | `"--version=v1.13.0"` |  |
| hcManager.manager.argsAgentMgmtCluster[4] | string | `"--agent-in-mgmt-cluster=true"` |  |
| hcManager.manager.extraArgsAgentMgmtCluster | object | `{}` |  |
| hcManager.manager.extraEnv | list | `[]` |  |
| hcManager.manager.extraVolumes | list | `[]` |  |
| hcManager.manager.containerSecurityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"seccompProfile":{"type":"RuntimeDefault"}}` | The SecurityContext for the containers |
| hcManager.manager.image.registry | string | `""` | The Docker registry. Defaults to global.registry if empty. |
| hcManager.manager.image.repository | string | `"projectsveltos/healthcheck-manager"` | Docker image repository |
| hcManager.manager.image.tag | string | `"v1.13.0"` |  |
| hcManager.manager.image.digest | string | `"sha256:542fcfa2f0042e9a5fdbfb40ab8efa8ef46bcf059b841e9931c402075e843c69"` |  |
| hcManager.manager.resources | object | `{"limits":{"cpu":"500m","memory":"512Mi"},"requests":{"cpu":"10m","memory":"128Mi"}}` | Resource requests and limits |
| hcManager.nodeSelector | object | `{}` |  |
| hcManager.podSecurityContext | object | `{"runAsNonRoot":true,"seccompProfile":{"type":"RuntimeDefault"}}` | The SecurityContext for the pod |
| hcManager.tolerations | list | `[]` |  |
| hcManager.serviceAccount.annotations | object | `{}` |  |
| crdManager.serviceAccount.annotations."helm.sh/hook" | string | `"pre-upgrade,pre-rollback"` |  |
| crdManager.serviceAccount.annotations."helm.sh/hook-delete-policy" | string | `"hook-succeeded,before-hook-creation"` |  |
| crdManagerJob.enabled | bool | `true` |  |
| crdManagerJob.backoffLimit | int | `4` |  |
| crdManagerJob.crdManager.extraEnv | list | `[]` |  |
| crdManagerJob.crdManager.extraVolumes | list | `[]` |  |
| crdManagerJob.crdManager.containerSecurityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"seccompProfile":{"type":"RuntimeDefault"}}` | The SecurityContext for the containers |
| crdManagerJob.crdManager.image.registry | string | `""` | The Docker registry. Defaults to global.registry if empty. |
| crdManagerJob.crdManager.image.repository | string | `"projectsveltos/crd-manager"` | Docker image repository |
| crdManagerJob.crdManager.image.tag | string | `"v1.13.0"` |  |
| crdManagerJob.crdManager.image.digest | string | `"sha256:44009ae6925ee1a24fd3d0885696e12657925f6d55d6a5c75ed365fafa08fb00"` |  |
| crdManagerJob.crdManager.imagePullPolicy | string | `"IfNotPresent"` |  |
| crdManagerJob.crdManager.nodeSelector | object | `{}` |  |
| crdManagerJob.crdManager.tolerations | list | `[]` |  |
| crdManagerJob.crdManager.resources | object | `{"requests":{"memory":"128Mi"}}` | Resource requests and limits |
| kubernetesClusterDomain | string | `"cluster.local"` |  |
| registerMgmtCluster.serviceAccount.annotations | object | `{}` |  |
| registerMgmtClusterJob.backoffLimit | int | `4` |  |
| registerMgmtClusterJob.registerMgmtCluster.args[0] | string | `"--labels="` |  |
| registerMgmtClusterJob.registerMgmtCluster.args[1] | string | `"--service-account-token=false"` |  |
| registerMgmtClusterJob.registerMgmtCluster.extraArgs | object | `{}` |  |
| registerMgmtClusterJob.registerMgmtCluster.extraEnv | list | `[]` |  |
| registerMgmtClusterJob.registerMgmtCluster.extraVolumes | list | `[]` |  |
| registerMgmtClusterJob.registerMgmtCluster.containerSecurityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"seccompProfile":{"type":"RuntimeDefault"}}` | The SecurityContext for the containers |
| registerMgmtClusterJob.registerMgmtCluster.image.registry | string | `""` | The Docker registry. Defaults to global.registry if empty. |
| registerMgmtClusterJob.registerMgmtCluster.image.repository | string | `"projectsveltos/register-mgmt-cluster"` | Docker image repository |
| registerMgmtClusterJob.registerMgmtCluster.image.tag | string | `"v1.13.0"` |  |
| registerMgmtClusterJob.registerMgmtCluster.image.digest | string | `"sha256:0c7e5aae423cbae399269d0389e716a241d671acfd90a750e840831a7c0cd7df"` |  |
| registerMgmtClusterJob.registerMgmtCluster.imagePullPolicy | string | `"IfNotPresent"` |  |
| registerMgmtClusterJob.registerMgmtCluster.nodeSelector | object | `{}` |  |
| registerMgmtClusterJob.registerMgmtCluster.tolerations | list | `[]` |  |
| registerMgmtClusterJob.registerMgmtCluster.resources | object | `{"requests":{"memory":"128Mi"}}` | Resource requests and limits |
| scManager.annotations | object | `{}` |  |
| scManager.labels | object | `{}` |  |
| scManager.manager.args[0] | string | `"--diagnostics-address=:8443"` |  |
| scManager.manager.args[1] | string | `"--shard-key="` |  |
| scManager.manager.args[2] | string | `"--v=5"` |  |
| scManager.manager.extraArgs | object | `{}` |  |
| scManager.manager.extraEnv | list | `[]` |  |
| scManager.manager.extraVolumes | list | `[]` |  |
| scManager.manager.containerSecurityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"seccompProfile":{"type":"RuntimeDefault"}}` | The SecurityContext for the containers |
| scManager.manager.image.registry | string | `""` | The Docker registry. Defaults to global.registry if empty. |
| scManager.manager.image.repository | string | `"projectsveltos/sveltoscluster-manager"` | Docker image repository |
| scManager.manager.image.tag | string | `"v1.13.0"` |  |
| scManager.manager.image.digest | string | `"sha256:c8342b22999c1038744e3f3e76a7a8aaa06502b1b3829e3e26bac6f988581cfd"` |  |
| scManager.manager.resources | object | `{"limits":{"cpu":"500m","memory":"512Mi"},"requests":{"cpu":"10m","memory":"128Mi"}}` | Resource requests and limits |
| scManager.nodeSelector | object | `{}` |  |
| scManager.podSecurityContext | object | `{"runAsNonRoot":true,"seccompProfile":{"type":"RuntimeDefault"}}` | The SecurityContext for the pod |
| scManager.ports[0].name | string | `"metrics"` |  |
| scManager.ports[0].port | int | `80` |  |
| scManager.ports[0].protocol | string | `"TCP"` |  |
| scManager.ports[0].targetPort | int | `8443` |  |
| scManager.tolerations | list | `[]` |  |
| scManager.serviceAccount.annotations | object | `{}` |  |
| scManager.type | string | `"ClusterIP"` |  |
| scManager.serviceMonitor.additionalLabels | object | `{}` |  |
| shardController.enabled | bool | `true` |  |
| shardController.annotations | object | `{}` |  |
| shardController.labels | object | `{}` |  |
| shardController.shardComponentsConfigMap.name | string | `"shard-components-config"` |  |
| shardController.shardComponentsConfigMap.data | object | `{}` |  |
| shardController.extraEnv | list | `[]` |  |
| shardController.extraVolumes | list | `[]` |  |
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
| shardController.manager.extraVolumes | list | `[]` |  |
| shardController.manager.containerSecurityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"seccompProfile":{"type":"RuntimeDefault"}}` | The SecurityContext for the containers |
| shardController.manager.image.registry | string | `""` | The Docker registry. Defaults to global.registry if empty. |
| shardController.manager.image.repository | string | `"projectsveltos/shard-controller"` | Docker image repository |
| shardController.manager.image.tag | string | `"v1.13.0"` |  |
| shardController.manager.image.digest | string | `"sha256:8161ef6e7bb30a360e79f36eb2298954437a4d1aee8857e6565062933019ef87"` |  |
| shardController.manager.resources | object | `{"limits":{"cpu":"500m","memory":"512Mi"},"requests":{"cpu":"10m","memory":"128Mi"}}` | Resource requests and limits |
| shardController.nodeSelector | object | `{}` |  |
| shardController.podSecurityContext | object | `{"runAsNonRoot":true,"seccompProfile":{"type":"RuntimeDefault"}}` | The SecurityContext for the pod |
| shardController.tolerations | list | `[]` |  |
| shardController.serviceAccount.annotations | object | `{}` |  |
| techsupportController.enabled | bool | `true` |  |
| techsupportController.annotations | object | `{}` |  |
| techsupportController.labels | object | `{}` |  |
| techsupportController.extraEnv | list | `[]` |  |
| techsupportController.extraVolumes | list | `[]` |  |
| techsupportController.controller.args[0] | string | `"--v=5"` |  |
| techsupportController.controller.extraArgs | object | `{}` |  |
| techsupportController.controller.extraEnv | list | `[]` |  |
| techsupportController.controller.extraVolumes | list | `[]` |  |
| techsupportController.controller.containerSecurityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"seccompProfile":{"type":"RuntimeDefault"}}` | The SecurityContext for the containers |
| techsupportController.controller.image.registry | string | `""` | The Docker registry. Defaults to global.registry if empty. |
| techsupportController.controller.image.repository | string | `"projectsveltos/techsupport"` | Docker image repository |
| techsupportController.controller.image.tag | string | `"v1.13.0"` |  |
| techsupportController.controller.image.digest | string | `"sha256:51764732650fc1ca9a57f9afda34f2885e544abcd7dfa4d57280cc99627b82cb"` |  |
| techsupportController.controller.resources | object | `{"limits":{"cpu":"500m","memory":"1024Mi"},"requests":{"cpu":"10m","memory":"128Mi"}}` | Resource requests and limits |
| techsupportController.nodeSelector | object | `{}` |  |
| techsupportController.podSecurityContext | object | `{"runAsNonRoot":true,"seccompProfile":{"type":"RuntimeDefault"}}` | The SecurityContext for the pod |
| techsupportController.tolerations | list | `[]` |  |
| techsupportController.serviceAccount.annotations | object | `{}` |  |
| mcpServer.enabled | bool | `true` |  |
| mcpServer.annotations | object | `{}` |  |
| mcpServer.labels | object | `{}` |  |
| mcpServer.controller.args[0] | string | `"--v=5"` |  |
| mcpServer.controller.extraArgs | object | `{}` |  |
| mcpServer.controller.extraEnv | list | `[]` |  |
| mcpServer.controller.extraVolumes | list | `[]` |  |
| mcpServer.controller.containerSecurityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"seccompProfile":{"type":"RuntimeDefault"}}` | The SecurityContext for the containers |
| mcpServer.controller.image.registry | string | `""` | The Docker registry. Defaults to global.registry if empty. |
| mcpServer.controller.image.repository | string | `"projectsveltos/mcp-server"` | Docker image repository |
| mcpServer.controller.image.tag | string | `"v1.13.0"` |  |
| mcpServer.controller.image.digest | string | `"sha256:f7bdb3f052ec7cf1ee72c967c5317e14012288b6eeadebe46661622c865da11c"` |  |
| mcpServer.controller.resources | object | `{"limits":{"cpu":"500m","memory":"1024Mi"},"requests":{"cpu":"100m","memory":"128Mi"}}` | Resource requests and limits |
| mcpServer.nodeSelector | object | `{}` |  |
| mcpServer.podSecurityContext | object | `{"runAsNonRoot":true,"seccompProfile":{"type":"RuntimeDefault"}}` | The SecurityContext for the pod |
| mcpServer.ports[0].name | string | `"metrics"` |  |
| mcpServer.ports[0].port | int | `80` |  |
| mcpServer.ports[0].protocol | string | `"TCP"` |  |
| mcpServer.ports[0].targetPort | int | `8080` |  |
| mcpServer.tolerations | list | `[]` |  |
| mcpServer.serviceAccount.annotations | object | `{}` |  |
| mcpServer.type | string | `"ClusterIP"` |  |
| sveltosAgentManager.serviceAccount.annotations | object | `{}` |  |
| prometheus.enabled | bool | `false` |  |
| agent.managementCluster | bool | `false` |  |
| telemetry.disabled | bool | `false` |  |
| defaultClassifier.annotations | object | `{}` |  |
| defaultClassifier.labels | object | `{}` |  |
| defaultDebuggingConfiguration.annotations | object | `{}` |  |
| defaultDebuggingConfiguration.labels | object | `{}` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
