# Timed Application

## Introduction

This chart bootstraps a Timed application deployment on a [Kubernetes](https://kubernetes.io) cluster using the [Helm](https://helm.sh) package manager.

## Prerequisites

- Kubernetes 1.17+
- PV provisioner support in the underlying infrastructure
- Helm 3.0+

## Installing the Chart

To install the chart with the release name `my-release` git clone repository and run
following command:

```bash
$ helm install --set ingress.hosts={"test-timed.k8s-dev.sycloud.ch"} --name my-release .
```

The command deploys Timed on the Kubernetes cluster in the default configuration whereas host is set to ingress.hosts.

For simple testing without any persistence you can run the following:

```bash
$ helm install --set ingress.hosts={"test-timed.k8s-dev.sycloud.ch"} --set postgresql.persistence.enabled=false --name test-release .
```

## Uninstalling the Chart

To uninstall/delete the `my-release` deployment:

```bash
$ helm delete my-release
```

## TODOs

- Travis running helm lint
- cron jobs
- Documentation of configuration options
