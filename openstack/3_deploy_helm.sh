#!/bin/bash

set -e
. config

helm repo add pangeo https://pangeo-data.github.io/helm-chart/
helm repo update

helm install pangeo/pangeo --devel \
   --namespace=${NAMESPACE} --name=pangeohub \
   -f secret_config.yaml \
   -f jupyter_config.yaml \
   --version ${VERSION}
