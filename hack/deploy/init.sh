#/bin/bash

set -e

source hack/sh/rc.sh

readonly infra_ns=$ADFINIS_CHARTS_INFRA_NS
readonly argocd_version=$ADFINIS_CHARTS_ARGOCD_VERSION
readonly prometheus_operator_version=$ADFINIS_CHARTS_PROMETHEUS_OPERATOR_VERSION

set +x

# Create Namespace needed for testing
kubectl create ns $infra_ns

# Install CRDs needed to test charts
kubectl apply -f https://raw.githubusercontent.com/argoproj/argo-cd/v$argocd_version/manifests/crds/application-crd.yaml
kubectl apply -f https://raw.githubusercontent.com/argoproj/argo-cd/v$argocd_version/manifests/crds/appproject-crd.yaml

kubectl apply -f https://raw.githubusercontent.com/coreos/prometheus-operator/release-$prometheus_operator_version/example/prometheus-operator-crd/monitoring.coreos.com_servicemonitors.yaml
kubectl apply -f https://raw.githubusercontent.com/coreos/prometheus-operator/release-$prometheus_operator_version/example/prometheus-operator-crd/monitoring.coreos.com_podmonitors.yaml
