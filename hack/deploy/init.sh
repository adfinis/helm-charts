#/bin/bash

set -e

source hack/sh/rc.sh

readonly infra_ns=$ADFINIS_CHARTS_INFRA_NS
readonly argocd_version=$ADFINIS_CHARTS_ARGOCD_VERSION
readonly kube_prometheus_stack_version=$ADFINIS_CHARTS_KUBE_PROMETHEUS_STACK_VERISON
readonly secrets_store_csi_driver_version=$ADFINIS_CHARTS_SECRETS_STORE_CSI_DRIVER_VERSION
readonly cert_manager_version=$ADFINIS_CHARTS_CERT_MANAGER_VERSION
readonly rbac_manager_version=$ADFINIS_CHARTS_RBAC_MANAGER_VERSION

set +x

# Create Namespace needed for testing
kubectl create ns $infra_ns

# Install CRDs needed to test charts
kubectl apply -f https://raw.githubusercontent.com/argoproj/argo-cd/v$argocd_version/manifests/crds/application-crd.yaml
kubectl apply -f https://raw.githubusercontent.com/argoproj/argo-cd/v$argocd_version/manifests/crds/appproject-crd.yaml

kubectl apply -f https://raw.githubusercontent.com/prometheus-community/helm-charts/kube-prometheus-stack-$kube_prometheus_stack_version/charts/kube-prometheus-stack/charts/crds/crds/crd-servicemonitors.yaml
kubectl apply -f https://raw.githubusercontent.com/prometheus-community/helm-charts/kube-prometheus-stack-$kube_prometheus_stack_version/charts/kube-prometheus-stack/charts/crds/crds/crd-podmonitors.yaml
kubectl apply -f https://raw.githubusercontent.com/prometheus-community/helm-charts/kube-prometheus-stack-$kube_prometheus_stack_version/charts/kube-prometheus-stack/charts/crds/crds/crd-prometheusrules.yaml

kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/secrets-store-csi-driver/v$secrets_store_csi_driver_version/deploy/secrets-store.csi.x-k8s.io_secretproviderclasses.yaml

kubectl apply -f https://github.com/jetstack/cert-manager/releases/download/v$cert_manager_version/cert-manager.crds.yaml

kubectl apply -f https://raw.githubusercontent.com/FairwindsOps/rbac-manager/v$rbac_manager_version/deploy/2_crd.yaml
