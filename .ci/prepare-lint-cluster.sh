#/bin/bash

# Create Namespaces needed for testing
kubectl create ns argocd

# Install CRDs needed to test charts
kubectl apply -f https://raw.githubusercontent.com/argoproj/argo-cd/v1.5.2/manifests/crds/application-crd.yaml
kubectl apply -f https://raw.githubusercontent.com/argoproj/argo-cd/v1.5.2/manifests/crds/appproject-crd.yaml
kubectl apply -f https://raw.githubusercontent.com/coreos/prometheus-operator/release-0.38/example/prometheus-operator-crd/monitoring.coreos.com_servicemonitors.yaml
kubectl apply -f https://raw.githubusercontent.com/coreos/prometheus-operator/release-0.38/example/prometheus-operator-crd/monitoring.coreos.com_podmonitors.yaml
