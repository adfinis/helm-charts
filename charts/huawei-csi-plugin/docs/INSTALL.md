# Installation of the huawei-csi-plugin

## Helm installation

Because of the way the Huawei CSI plugin is currently designed it must be
installed in the `kube-system` namespace and with `fullnameOverride` set to
`huawei-csi`.

```
helm install --namespace kube-system huawei-csi adfinis/huawei-csi-plugin --set fullnameOverride=huawei-csi
```

## Generate secret

To generate the secret `huawei-csi-secret` after the Helm installation has been
finished you need to grab the `secretGenerate` binary from the respective ZIP
archive of your Huawei eSDK release
(<https://github.com/Huawei/eSDK_K8S_Plugin/releases>) and execute it. You have
to input the credentials for every configured backend and it will generate the
secret for you.
