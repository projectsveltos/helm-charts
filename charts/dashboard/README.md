# sveltos-dashboard

![Version: 1.2.1](https://img.shields.io/badge/Version-1.2.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.2.1](https://img.shields.io/badge/AppVersion-1.2.1-informational?style=flat-square)

A Helm chart for Sveltos dashboard

## HTTPRoute Support

The Sveltos dashboard chart supports [Kubernetes Gateway API](https://gateway-api.sigs.k8s.io/) HTTPRoute for advanced traffic routing. This provides an alternative to traditional Ingress resources with more flexible routing capabilities.

### Prerequisites

- Gateway API CRDs installed in your cluster
- A Gateway resource configured and ready to accept routes

### Enabling HTTPRoute

To enable HTTPRoute support, set `dashboard.httpRoute.enabled=true` in your values:

```yaml
dashboard:
  httpRoute:
    enabled: true
    parentRefs:
      - name: gateway
        namespace: gateway-system
        sectionName: https
        port: 443
    hostnames:
      - dashboard.example.com
    rules:
      - matches:
          - path:
              type: PathPrefix
              value: /
```

### Advanced Configuration

You can configure filters for header modification, redirects, and more:

```yaml
dashboard:
  httpRoute:
    enabled: true
    labels:
      environment: production
    annotations:
      cert-manager.io/cluster-issuer: letsencrypt-prod
    parentRefs:
      - name: gateway
        namespace: gateway-system
    hostnames:
      - dashboard.example.com
    rules:
      - matches:
          - path:
              type: PathPrefix
              value: /
        filters:
          - type: RequestHeaderModifier
            requestHeaderModifier:
              add:
                - name: X-Custom-Header
                  value: custom-value
```

See `tests/httproute-values.yaml` for a complete example configuration.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| dashboard.affinity | object | `{}` |  |
| dashboard.dashboard.image.digest | string | `"sha256:afcf80934d19b56f7d4341f3ac1f6732024847bd1e16031c9db63a69ad41a3a9"` |  |
| dashboard.dashboard.image.repository | string | `"projectsveltos/dashboard"` |  |
| dashboard.dashboard.image.tag | string | `"v1.2.1"` |  |
| dashboard.dashboard.resources.limits.cpu | string | `"500m"` |  |
| dashboard.dashboard.resources.limits.memory | string | `"512Mi"` |  |
| dashboard.dashboard.resources.requests.cpu | string | `"100m"` |  |
| dashboard.dashboard.resources.requests.memory | string | `"128Mi"` |  |
| dashboard.httpRoute.annotations | object | `{}` | Additional annotations for HTTPRoute resource |
| dashboard.httpRoute.enabled | bool | `false` | Enable HTTPRoute for Gateway API support |
| dashboard.httpRoute.hostnames[0] | string | `"dashboard.cluster.local"` | Hostnames for HTTPRoute routing |
| dashboard.httpRoute.labels | object | `{}` | Additional labels for HTTPRoute resource |
| dashboard.httpRoute.parentRefs | list | `[]` | Gateway parentRefs (e.g., [{"name": "gateway", "namespace": "gateway-system"}]) |
| dashboard.httpRoute.rules[0].matches[0].path.type | string | `"PathPrefix"` | Path match type for HTTPRoute rule |
| dashboard.httpRoute.rules[0].matches[0].path.value | string | `"/"` | Path value for HTTPRoute rule |
| dashboard.ingress.annotations | object | `{}` |  |
| dashboard.ingress.className | string | `""` |  |
| dashboard.ingress.enabled | bool | `false` |  |
| dashboard.ingress.hosts[0].host | string | `"dashboard.cluster.local"` |  |
| dashboard.ingress.hosts[0].paths[0].path | string | `"/"` |  |
| dashboard.ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| dashboard.ingress.tls | list | `[]` |  |
| dashboard.nodeSelector."kubernetes.io/os" | string | `"linux"` |  |
| dashboard.ports[0].port | int | `80` |  |
| dashboard.ports[0].protocol | string | `"TCP"` |  |
| dashboard.ports[0].targetPort | int | `5173` |  |
| dashboard.replicas | int | `1` |  |
| dashboard.tolerations | list | `[]` |  |
| dashboard.type | string | `"ClusterIP"` |  |
| global.imagePullSecrets | list | `[]` |  |
| global.registry | string | `"docker.io"` |  |
| global.useDigest | bool | `false` |  |
| kubernetesClusterDomain | string | `"cluster.local"` |  |
| uiBackendManager.affinity | object | `{}` |  |
| uiBackendManager.manager.args[0] | string | `"--diagnostics-address=:8443"` |  |
| uiBackendManager.manager.args[1] | string | `"--v=5"` |  |
| uiBackendManager.manager.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| uiBackendManager.manager.containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| uiBackendManager.manager.image.digest | string | `"sha256:cfb5998a75d9a26298fa2e575ffd78c6a547baac5f5a355dd7ee1cd68d6aa6d4"` |  |
| uiBackendManager.manager.image.repository | string | `"projectsveltos/ui-backend"` |  |
| uiBackendManager.manager.image.tag | string | `"v1.2.1"` |  |
| uiBackendManager.manager.resources.limits.cpu | string | `"500m"` |  |
| uiBackendManager.manager.resources.limits.memory | string | `"512Mi"` |  |
| uiBackendManager.manager.resources.requests.cpu | string | `"100m"` |  |
| uiBackendManager.manager.resources.requests.memory | string | `"128Mi"` |  |
| uiBackendManager.nodeSelector."kubernetes.io/os" | string | `"linux"` |  |
| uiBackendManager.podSecurityContext.runAsNonRoot | bool | `true` |  |
| uiBackendManager.ports[0].port | int | `80` |  |
| uiBackendManager.ports[0].protocol | string | `"TCP"` |  |
| uiBackendManager.ports[0].targetPort | int | `8080` |  |
| uiBackendManager.replicas | int | `1` |  |
| uiBackendManager.tolerations | list | `[]` |  |
| uiBackendManager.type | string | `"ClusterIP"` |  |

