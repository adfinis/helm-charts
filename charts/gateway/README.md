# gateway

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v2.2.2](https://img.shields.io/badge/AppVersion-v2.2.2-informational?style=flat-square)

Chart for a kgateway gateway

## Maintainers
This chart is maintained by [Adfinis](https://adfinis.com/?pk_campaign=github&pk_kwd=helm-charts).

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| accessLog.enabled | bool | `false` |  |
| accessLog.logFormat | string | `"\"%REQ(:METHOD)% %REQ(X-ENVOY-ORIGINAL-PATH?:PATH)% %RESPONSE_CODE% \"%REQ(:AUTHORITY)%\" \"%UPSTREAM_CLUSTER%\""` | Formatting of the access log |
| accessLog.logName | string | `"http-gateway-access-logs"` | Name for the access log |
| accessLog.otelService | object | `{"name":null,"namespace":null,"port":null}` | Open Telemetry Collector GRPC Service which should receive the logs |
| accessLog.otelService.name | string | `nil` | Name of the GRPC Service of Open Telemetry Collector |
| accessLog.otelService.namespace | string | `nil` | Namspace of the GRPC Service of Open Telemetry Collector |
| accessLog.otelService.port | int | `nil` | Port of the GRPC Service of Open Telemetry Collector |
| autoscaling.enabled | bool | `false` | Enable autoscaling |
| autoscaling.maxReplicas | int | `nil` | Specify the minimum number of replicas |
| autoscaling.minReplicas | int | `nil` | Specify the maximum number of replicas |
| autoscaling.targetCPUUtilizationPercentage | int | `nil` | Specify the percentage of CPU used before it scales up |
| autoscaling.targetMemoryUtilizationPercentage | int | `nil` | Specify the percentage of CPU used before it scales up |
| fullnameOverride | string | `""` | Override the full name |
| gateway.addresses | list | `[]` | Specify addresses that will be requested for the gateway |
| gateway.annotations | object | `{}` | Specify annotations to the gateway |
| gateway.listeners | list | `[]` | Specify listeners for the gateway |
| gatewayParameters.annotations | object | `{}` | Add annotations to the gateway parameters |
| gatewayParameters.deploymentStrategy | string | `"RollingUpdate"` | Specify the startegy used to replace old envoy Pods by new ones |
| gatewayParameters.enabled | bool | `true` | Enable Gateway Parmeters |
| gatewayParameters.envoyContainer | object | `{"bootstrap":{},"env":[],"extraVolumeMounts":[],"image":{},"securityContext":{}}` | Configuration for the envoy container apart from resources (configured further down) |
| gatewayParameters.istio | object | `{}` | Configuration for the istio integration |
| gatewayParameters.maxSurge | int | `nil` | Specify the maximum numbe rof pods that can be scheduled above the desired number of pods if the deployment strategy is RollingUpdate |
| gatewayParameters.maxUnavailable | int | `nil` | Specify the maximum number of unavailable pods during an update if the deployment strategy is RollingUpdate |
| gatewayParameters.omitDefaultSecurityContext | bool | `false` | Enable to omit the rendering of 'securityContext' fields |
| gatewayParameters.podTemplate | object | `{}` | Configuration for the pods that will be created |
| gatewayParameters.replicas | int | `nil` | Specify number of replicas for the created envoy deployment |
| gatewayParameters.sdsContainer | object | `{}` | Configuration for the Secret Discovery Service |
| gatewayParameters.service | object | `{"clusterIP":null,"externalTrafficPolicy":null,"extraAnnotations":{},"extraLabels":{},"ports":[],"type":"LoadBalancer"}` | Configure the service that exposes the proxy |
| gatewayParameters.serviceAccount | object | `{}` | Configure the ServiceAccount used by the proxy pods |
| gatewayParameters.stats | object | `{}` | Configuration for the stats server |
| listenerPolicy.annotations | object | `{}` | Specify annotations for the listener policy |
| listenerPolicy.default.httpSettings | object | `{}` | Define any config or policy that should map 1-to-1 with a given HTTPListener |
| listenerPolicy.default.perConnectionBufferLimitBytes | int | `nil` | Specify the default per-connection buffer limit |
| listenerPolicy.default.proxyProtocol | object | `nil` | If this is set (even to '{}') envoy will expect connections to include the PROXY protocol header |
| listenerPolicy.enabled | bool | `false` | Enable the listener policy |
| listenerPolicy.perPort | list | `[]` | Overwrite the listener configuration per port |
| monitoring.service.port | int | `9091` | Define the port which the service exposes and the service monitor targets |
| monitoring.service.targetPort | string | `"http-monitoring"` | Define the port which the service should target to scrape the labels from the pods |
| monitoring.serviceMonitor.attachMetadata | object | `{}` | Define additional metadata to be added to discored targets |
| monitoring.serviceMonitor.bodySizeLimit | string | `nil` | Define a job level limit on the size of the uncompressed response body that will be accepted |
| monitoring.serviceMonitor.convertClassicHistogramsToNHCB | bool | `false` | Define wether to convert all scrape classic histograms to native histograms |
| monitoring.serviceMonitor.enabled | bool | `false` | Enable the service monitor |
| monitoring.serviceMonitor.endpoint | object | `{"interval":"2s","path":"/metrics"}` | Define how to scrape metrics from the service |
| monitoring.serviceMonitor.endpoint.interval | string | `"2s"` | Interval in which the the metrics are scraped |
| monitoring.serviceMonitor.endpoint.path | string | `"/metrics"` | Define the where the labels are to be scraped |
| monitoring.serviceMonitor.extraLabels | object | `{}` | Add additional labels to the service monitor (for example for prometheus to discover it) |
| monitoring.serviceMonitor.fallbackScrapeProtocol | string | `nil` | Define the scrap protocl to use if a scrape returns unusable content |
| monitoring.serviceMonitor.jobLabel | string | `nil` | Defines the label to use to retrive the job name from. |
| monitoring.serviceMonitor.keepDroppedTargets | int | `nil` | Define the per-scrape limit on the number of targets dropped by relabeling that will be kept in memory |
| monitoring.serviceMonitor.labelLimit | int | `nil` | Define the per-scrape limit on the number of labels |
| monitoring.serviceMonitor.labelNameLengthLimit | int | `nil` | Define the per-scrape limit on the length of labels |
| monitoring.serviceMonitor.labelValueLengthLimit | int | `nil` | Define the per-scrape limit on the length of values |
| monitoring.serviceMonitor.nativeHistogramBucketLimit | int | `nil` | Define the limit for buckets in a native histogram |
| monitoring.serviceMonitor.nativeHistogramMinBucketFactor | string | `nil` | Define that if the growth factor of one bucket to the next is samller than this, the buckets will be merged |
| monitoring.serviceMonitor.podTargetLabels | list | `[]` | Define the labels which transferred from the pod to the ingeste labels |
| monitoring.serviceMonitor.sampleLimit | int | `nil` | Define a per-scrape limit on the number of scraped samples |
| monitoring.serviceMonitor.scrapeClass | string | `nil` | Define the scrape class |
| monitoring.serviceMonitor.scrapeClassicHistograms | bool | `false` | Define wether to scrape classic histograms that are also exposed as a native histogram |
| monitoring.serviceMonitor.scrapeProtocols | list | `[]` | Define the protocol to negotiate during a scrape |
| monitoring.serviceMonitor.selectorMechanism | string | `nil` | Define the mechanism used to select the endpoints to scrape |
| monitoring.serviceMonitor.targetLabels | list | `[]` | Define the labels that will be transferred from the target service onto the ingested metrics |
| monitoring.serviceMonitor.targetLimit | string | `nil` | Define a limit on the number of scraped targets that will be accepted. |
| nameOverride | string | `""` | Override the chart name |
| networkPolicy.annotations | object | `{}` | Specify annotations for the network policy |
| networkPolicy.egress | list | `[]` | Define egress rules |
| networkPolicy.enabled | bool | `false` | Enable the network policy |
| networkPolicy.ingress | list | `[]` | Define ingress rules |
| networkPolicy.matchExpressions | list | `[]` | Apply the network policy by using expressions |
| networkPolicy.matchLabels | object | `{}` | Apply the network policy to resources by matching labels |
| podDisruption.enabled | bool | `false` | Enable a pod disruption budget |
| podDisruption.maxUnavailable | int | `nil` | Specify the maximum number of replicas that may be unavailable |
| podDisruption.minAvailable | int | `nil` | Specify the minimum number of replicas that have to be available |
| podDisruption.unhealthyPodEvictionPolicy | string | `nil` | Define the criteria for when unhealthy pods should be considered for eviction |
| redirectHTTP | bool | `true` | Redirct HTTP traffic to HTTPS |
| resources | object | `{"claims":{},"limits":{},"requests":{}}` | Resource limits claims and requests for the envoy containers (will be configured in GatwayParameters.envoyContainer and automatically enable GatewayParameters) |

## About this chart

Adfinis fights for a software world that is more open, where the quality is
better and where software must be accessible to everyone. This chart
is part of the action behind this commitment. Feel free to
[contact](https://adfinis.com/kontakt/?pk_campaign=github&pk_kwd=helm-charts)
us if you have any questions.

## License

This Helm chart is free software: you can redistribute it and/or modify it under the terms
of the GNU Affero General Public License as published by the Free Software Foundation,
version 3 of the License.

----------------------------------------------
Autogenerated from chart metadata using [helm-docs](https://github.com/norwoodj/helm-docs/)
