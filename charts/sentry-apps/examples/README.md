# Sentry apps example

## Ingress and Certificate

The following example assumes a working NGINX ingress controller, as well as a working Cert Manager plus its `SelfSigned` issuer.

- [NGINX Ingress Controller](https://kubernetes.github.io/ingress-nginx/deploy/)
- [SelfSigned Issuer](https://cert-manager.io/docs/configuration/selfsigned/)

```yaml
apiVersion: cert-manager.io/v1alpha2
kind: Issuer
metadata:
  name: sentry-issuer
  namespace: sentry
spec:
  selfSigned: {}
```

The `annotations` are picking up the NGINX ingress controller and telling the Cert manager to use a particular issuer for it.

```yaml
ingress:
  enabled: true
  hostname: <hostname>

  annotations:
    "kubernetes.io/ingress.class": nginx

    # issuer in the sentry namespace
    "cert-manager.io/issuer": sentry-issuer
    # global issuer
    #"cert-manager.io/cluster-issuer": selfsigned-issuer

    # disable max body size
    nginx.ingress.kubernetes.io/proxy-body-size: 0

  tls:
    - hosts:
        - <hostname>
      secretName: sentry-tls
```

[values.yaml](./ingress-and-certificate.values.yaml)
