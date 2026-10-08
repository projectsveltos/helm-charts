# sveltos-dashboard

![Version: 1.16.1](https://img.shields.io/badge/Version-1.16.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.16.1](https://img.shields.io/badge/AppVersion-1.16.1-informational?style=flat-square)

A Helm chart for Sveltos dashboard

## Requirements

Kubernetes: `>=1.28.0-0`

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| global.registry | string | `"docker.io"` |  |
| global.useDigest | bool | `false` |  |
| global.imagePullSecrets | list | `[]` |  |
| dashboard.annotations | object | `{}` |  |
| dashboard.dashboard.image.repository | string | `"projectsveltos/dashboard"` |  |
| dashboard.dashboard.image.tag | string | `"v1.16.1"` |  |
| dashboard.dashboard.image.digest | string | `"sha256:c231fab2d0e109c2405a02b2bedc03c72b3b935ffabd8958bdb82984ac350815"` |  |
| dashboard.dashboard.resources.limits.cpu | string | `"500m"` |  |
| dashboard.dashboard.resources.limits.memory | string | `"512Mi"` |  |
| dashboard.dashboard.resources.requests.cpu | string | `"100m"` |  |
| dashboard.dashboard.resources.requests.memory | string | `"128Mi"` |  |
| dashboard.ports[0].port | int | `80` |  |
| dashboard.ports[0].protocol | string | `"TCP"` |  |
| dashboard.ports[0].targetPort | int | `5173` |  |
| dashboard.replicas | int | `1` |  |
| dashboard.type | string | `"ClusterIP"` |  |
| dashboard.ingress.enabled | bool | `false` |  |
| dashboard.ingress.className | string | `""` |  |
| dashboard.ingress.annotations | object | `{}` |  |
| dashboard.ingress.hosts[0].host | string | `"dashboard.cluster.local"` |  |
| dashboard.ingress.hosts[0].paths[0].path | string | `"/"` |  |
| dashboard.ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| dashboard.ingress.tls | list | `[]` |  |
| dashboard.httpRoute.enabled | bool | `false` |  |
| dashboard.httpRoute.labels | object | `{}` |  |
| dashboard.httpRoute.annotations | object | `{}` |  |
| dashboard.httpRoute.parentRefs | list | `[]` |  |
| dashboard.httpRoute.hostnames[0] | string | `"dashboard.cluster.local"` |  |
| dashboard.httpRoute.rules[0].matches[0].path.type | string | `"PathPrefix"` |  |
| dashboard.httpRoute.rules[0].matches[0].path.value | string | `"/"` |  |
| dashboard.tolerations | list | `[]` |  |
| dashboard.nodeSelector."kubernetes.io/os" | string | `"linux"` |  |
| dashboard.affinity | object | `{}` |  |
| kubernetesClusterDomain | string | `"cluster.local"` |  |
| uiBackendManager.manager.args[0] | string | `"--diagnostics-address=:8443"` |  |
| uiBackendManager.manager.args[1] | string | `"--v=5"` |  |
| uiBackendManager.manager.extraArgs | object | `{}` | Additional ui-backend flags, as flag: value (an empty value renders the bare flag). Set oidc-proxy-host (and oidc-proxy-ca-file) to send the dashboard user's token through an OIDC-aware proxy such as kube-oidc-proxy. Every user token goes to the proxy, including a ServiceAccount token from the manual login, which the proxy refuses unless token passthrough is enabled on it. |
| uiBackendManager.manager.extraEnv | list | `[]` | Additional environment variables for ui-backend, as a list of Kubernetes EnvVar entries. Do not point KUBERNETES_SERVICE_HOST at an OIDC proxy: ui-backend's own ServiceAccount calls must keep reaching the real API server (use extraArgs oidc-proxy-host for the user tokens instead). |
| uiBackendManager.manager.extraVolumes | list | `[]` | Additional volumes mounted in ui-backend. Each entry takes name, mountPath, optional subPath and readOnly, and a secret or configMap volume source. |
| uiBackendManager.manager.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| uiBackendManager.manager.containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| uiBackendManager.manager.image.repository | string | `"projectsveltos/ui-backend"` |  |
| uiBackendManager.manager.image.tag | string | `"v1.16.1"` |  |
| uiBackendManager.manager.image.digest | string | `"sha256:aed29fcf5937ca4e9de35766684d23eddb128943d81e18096444e464bdfc3da1"` |  |
| uiBackendManager.manager.resources.limits.cpu | string | `"500m"` |  |
| uiBackendManager.manager.resources.limits.memory | string | `"512Mi"` |  |
| uiBackendManager.manager.resources.requests.cpu | string | `"100m"` |  |
| uiBackendManager.manager.resources.requests.memory | string | `"128Mi"` |  |
| uiBackendManager.podSecurityContext.runAsNonRoot | bool | `true` |  |
| uiBackendManager.podSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| uiBackendManager.ports[0].port | int | `80` |  |
| uiBackendManager.ports[0].protocol | string | `"TCP"` |  |
| uiBackendManager.ports[0].targetPort | int | `8080` |  |
| uiBackendManager.replicas | int | `1` |  |
| uiBackendManager.type | string | `"ClusterIP"` |  |
| uiBackendManager.tolerations | list | `[]` |  |
| uiBackendManager.nodeSelector."kubernetes.io/os" | string | `"linux"` |  |
| uiBackendManager.affinity | object | `{}` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
