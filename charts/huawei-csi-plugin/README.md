# huawei-csi-plugin

> **:exclamation: This Helm Chart is deprecated!**

![Version: 0.3.2](https://img.shields.io/badge/Version-0.3.2-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v2.2.14](https://img.shields.io/badge/AppVersion-v2.2.14-informational?style=flat-square)

⚠️ (OBSOLETE) request for upstream chart is https://github.com/Huawei/eSDK_K8S_Plugin/issues/16

**Homepage:** <https://github.com/Huawei/eSDK_K8S_Plugin>

## Source Code

* <https://github.com/Huawei/eSDK_K8S_Plugin>
* <https://github.com/adfinis-sygroup/huawei-csi-plugin>
* <https://github.com/adfinis-sygroup/helm-charts/tree/master/charts/huawei-csi-plugin>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| controller | object | `{'replicaCount':1}` | different configuration options of controller deployment |
| csi_attacher.image.pullPolicy | string | `"IfNotPresent"` | Image PullPolicy for csi-attacher |
| csi_attacher.image.repository | string | `"quay.io/k8scsi/csi-attacher"` | Image Repo for csi-attacher |
| csi_attacher.image.tag | string | `"v1.2.1"` | Image Tag for csi-attacher |
| csi_attacher.resources | object | `{}` | resources for csi-attacher |
| csi_driver.controller.resources | object | `{}` | resources for csi-driver container within controller-deployment |
| csi_driver.controller.securityContext | object | - | securityContext for the huawei-csi-driver container in the controller deployment |
| csi_driver.image.pullPolicy | string | `"IfNotPresent"` | Image PullPolicy for csi-driver |
| csi_driver.image.repository | string | `"ghcr.io/adfinis-sygroup/huawei-csi-plugin"` | Image Repo for csi-driver |
| csi_driver.image.tag | string | `"v2.2.14"` | Image Tag for csi-driver |
| csi_driver.node.resources | object | `{}` | resources for csi-driver container within node-daemonset |
| csi_driver.node.securityContext | object | - | securityContext esacalates all the privileges for csi-driver container within node-daemonset |
| csi_livenessprobe.image.pullPolicy | string | `"IfNotPresent"` | Image PullPolicy for livenessprobe |
| csi_livenessprobe.image.repository | string | `"k8s.gcr.io/sig-storage/livenessprobe"` | Image Repo for livenessprobe |
| csi_livenessprobe.image.tag | string | `"v2.4.0"` | Image Tag for livenessprobe |
| csi_livenessprobe.resources | object | `{}` | resources for livenessprobe |
| csi_node_driver_registrar.image.pullPolicy | string | `"IfNotPresent"` | Image PullPolicy for csi-node-driver-registrar |
| csi_node_driver_registrar.image.repository | string | `"quay.io/k8scsi/csi-node-driver-registrar"` | Image Repo for csi-node-driver-registrar |
| csi_node_driver_registrar.image.tag | string | `"v2.0.1"` | Image Tag for csi-node-driver-registrar |
| csi_node_driver_registrar.resources | object | `{}` | resources for csi-node-driver-registrar |
| csi_provisioner.image.pullPolicy | string | `"IfNotPresent"` | Image PullPolicy for csi-provisioner |
| csi_provisioner.image.repository | string | `"quay.io/k8scsi/csi-provisioner"` | Image Repo for csi-provisioner |
| csi_provisioner.image.tag | string | `"v1.6.0"` | Image Tag for csi-provisioner |
| csi_provisioner.resources | object | `{}` | resources for csi-provisioner |
| csi_resizer.image.pullPolicy | string | `"IfNotPresent"` | Image PullPolicy for csi-resizer |
| csi_resizer.image.repository | string | `"quay.io/k8scsi/csi-resizer"` | Image Repo for csi-resizer |
| csi_resizer.image.tag | string | `"v1.0.1"` | Image Tag for csi-resizer |
| csi_resizer.resources | object | `{}` | resources for csi-resizer |
| csi_snapshot_controller.image.pullPolicy | string | `"IfNotPresent"` | Image PullPolicy for csi-snapshot-controller |
| csi_snapshot_controller.image.repository | string | `"quay.io/k8scsi/snapshot-controller"` | Image Repo for csi-snapshot-controller |
| csi_snapshot_controller.image.tag | string | `"v3.0.2"` | Image Tag for csi-snapshot-controller |
| csi_snapshot_controller.resources | object | `{}` | resources for csi-snapshot-controller |
| csi_snapshotter.image.pullPolicy | string | `"IfNotPresent"` | Image PullPolicy for csi-snapshotter |
| csi_snapshotter.image.repository | string | `"quay.io/k8scsi/csi-snapshotter"` | Image Repo for csi-snapshotter |
| csi_snapshotter.image.tag | string | `"v3.0.2"` | Image Tag for csi-snapshotter |
| csi_snapshotter.resources | object | `{}` | resources for csi-snapshotter |
| csiconfig | object | `{'backends': []}` | backend configuration for the csi controller (see [documentation](https://github.com/Huawei/eSDK_K8S_Plugin/tree/master/docs/en)) |
| features.multiController.enabled | bool | `false` | specifies if multiController is enabled or not |
| features.resizing.enabled | bool | `true` | specifies if resizing is enabled or not |
| features.snapshotting.enabled | bool | `true` | specifies if snapshotting is enabled or not |
| fullnameOverride | string | `""` | specifies the full name override to be used for helm |
| imagePullSecrets | list | `[]` | specifies the image pull secrets to be used |
| nameOverride | string | `""` | specifies the name override to be used for helm |
| node | object | - | different configuration options of node daemonset |
| rbac.create | bool | `true` | Whether to create RBAC or not |
| serviceAccount.annotations | object | `{}` | annotations to add to each service account |
| serviceAccount.create | bool | `true` | Whether to create serviceAccounts or not |

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
