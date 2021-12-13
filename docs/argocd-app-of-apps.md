# ArgoCD App-of-Apps

Our [Argo CD](https://argoproj.github.io/cd/) app-of-apps Helm charts all implement the [Argo CD app-of-apps pattern](https://argo-cd.readthedocs.io/en/stable/operator-manual/cluster-bootstrapping/#app-of-apps-pattern).
The charts deploy Argo CD Application resources and enable configuring multiple related or "work well together" apps.

They do not deploy any applications directly, rather they configure Argo CD which then does the actually deployment.

## Motivation

In the beginning we used Helm charts without Argo CD. Helm charts offer a great amount of abstraction when it comes to
deploying an individual app but we ended up using Argo CD to make it possible to continuously track changes Deployments
after CI had run Helm. There are some key facts about Helm charts that we noticed make sense to centrally manage.
- Chart sources (where we get our charts from, repo URLs and chart names)
- Chart versions

Our Argo CD app-of-apps charts currently provide these infos in machine deployable, individually overridable bundles. One
might consider them a curated collection of charts from multiple sources.

## Charts

All of our Argo CD app-of-apps charts have a name that is suffixed with `-apps`. A list of them is available from the
[main README](https://github.com/hairmare/helm-charts/blob/docs/app-of-apps/README.md#argo-cd-app-of-apps-charts).

For the most part the charts are thematically grouped. The exception being our `infra-apps` chart which contains apps
we consider valuable on most clusters. As with all the charts, `infra-apps` can contain some parts that are optional
depending on your exact situation, for example on Red Hat OpenShift you would typically not deploy the bundled ingress
component.

## The `argoconfig` library chart

Inspired by various `common` charts. The [`argoconfig` library chart](https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/argoconfig)
helps us keep charts that manage Argo CD `Application` resources generic to some degree.

It provides the `argoconfig.application` helper function which scaffolds an `Application` resource like so:

```yaml
apiVersion: argoproj.io/v1alpha1
kind: Application
# ... common.metadata
spec:
  project: "default"
  source: {}
  destination:
    server: "https://kubernetes.default.svc"
  syncPolicy: {}
```

Our app-of-apps charts invoke the function in their individual `Application` templates:

```yaml
{{ if .Values.example.enabled }}
{{ template "argoconfig.application" (list . "example-apps.example") }}
{{ end }}

{{- define "example-apps.example" -}}{{- $app := unset .Values.example "enabled" -}}{{- $name := default $app.namespace $app.name -}}
metadata:
  name: {{ template "common.fullname" . }}-{{ $name }}
spec:
  {{- if $app.project }}
  project: {{ $app.project | quote }}
  {{- end }}
  # ... more overriding, check any app-of-apps chart for an example
{{- end -}}
```

The first block in this example renders the `Application`, the second block injects a template used for rendering.

## Further Info

For now, these charts may be seen as an alternative to Argo CD ApplicationSets, [let us know](https://github.com/adfinis-sygroup/helm-charts/discussions)
if you would like for the charts to directly support ApplicationSets.
