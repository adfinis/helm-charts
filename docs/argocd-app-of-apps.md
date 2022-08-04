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

### Structure of app-of-app charts

The charts all share a similar structure that looks as follows:

```
.
├── README.md
├── Chart.lock
├── Chart.yaml
├── values.yaml
├── ci
│   └── default-values.yaml
├── examples
│   └── example-app.yaml
└── templates
    ├── NOTES.txt
    └── example-app.yaml
```

In this example the chart contains a single application called `example-app`. Most files correspond to their regular
helm chart counterparts but there are some special files. App names are dasherized in file names and camel cased
when used in YAML keys. As an example, the application "Example App" has files names using `example-app` and keys
using `exampleApp` throughout this documentation.

`ci/defauls-values.yaml` is not specific to app-of-apps charts but it enables each app during chart testing with
GitHub Actions:
```yaml
exampleApp:
  enabled: true
  values: {}
    # values needed for testing defined here
```

`examples/example-app.yaml` contains an example on how to configure the given app using the chart:
```yaml
exampleApp:
  enabled: true
  values:
    ingress:
      enabled: true
      annotations:
        kubernetes.io/ingress.class: nginx
        kubernetes.io/tls-acme: "true"
      pathType: Prefix
      hosts:
      - example-app.example.com
      tls:
      - hosts:
        - example-app.example.com
        secretName: example-app-cert
```

`templates/NOTES.txt` highlights what apps where installed:
```
The following apps have been provisioned in Argo CD:
{{ if .Values.exampleApp.enabled }}
* Example App
{{ end }}
```

The values file and the remainder of the templates are based on the `argoconfig` library chart. Their structure
is described below.

### The `argoconfig` library chart

Inspired by various `common` charts. The [`argoconfig` library chart](https://github.com/adfinis/helm-charts/tree/main/charts/argoconfig)
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
{{ if .Values.exampleApp.enabled }}
{{ template "argoconfig.application" (list . "example-apps.exampleApp") }}
{{ end }}

{{- define "example-apps.exampleApp" -}}{{- $app := unset .Values.exampleApp "enabled" -}}{{- $name := default $app.namespace $app.name -}}
metadata:
  name: {{ template "common.fullname" . }}-{{ $name }}
spec:
  {{- if $app.project }}
  project: {{ $app.project | quote }}
  {{- end }}
  # ... more overriding, check any app-of-apps chart for an example
{{- end -}}
```

The `Application` template for `exampleApp` would be stored in `templates/example-app.yaml` in a downstream app-of-apps chart.

The first block in this example renders the `Application`, the second block injects a template used for rendering. The first thing that
is done in the second block is to assign everything specific to an app to `$app` so it can be referenced in the template without needing
to write out the full `.Values.exampleApp` part over and over.

In the above example the `values.yaml` for an app-of-apps chart would contain a minimal section for an `exampleApp` application by default:

```yaml
exampleApp:
  enabled: false
  name: example
  # ... more values, check any app-of-apps chart for an example
  values: {}
```

## Component Deprecation

From time to time the app-of-apps charts will contain components that we want to get rid of.
These changes are breaking by definition so we want to take care of communicating this properly and give potential users enough heads up to follow along.

First we mark the component as DEPRECATED in the README.md and describe a replacement in the docs:

```yaml
# -- [component](https://example.com/) is DEPRECATED, use "improved solution" instead
# @default -- DEPRECATED
component:
  enabled: false
```

We will still keep the app available in the app-of-apps chart for at least 6 months so users can take time to replace it.
During this time the component does not get regular updates unless there are egregious security issues that need addressing.

Once we are ready to fully remove it we replace the components template with a `fail` template:

```yaml
{{ if .Values.component.enabled }}
{{ fail("component is DEPRECATED, use "improved solution" instead") }}
{{ end }}
```

On charts that already have a >1.x release, the change to `fail` is considered breaking so we bump the major version of the chart.
After switching the deprecated component to `fail` we keep it for >12 months. Then we remove the components template which isn't considered a breaking change since we gave everyone ample warning.

## Further Info

For now, these charts may be seen as an alternative to Argo CD ApplicationSets, [let us know](https://github.com/adfinis/helm-charts/discussions)
if you would like for the charts to directly support ApplicationSets.
