#!/bin/bash

set -x

helm repo add pangeo https://pangeo-data.github.io/helm-chart/
helm repo update

#helm install pangeo/pangeo \
#  --name=pangeohub \
#  --namespace=pangeo \
#  --devel \
#  \ #--version=v0.1.1-93765e6 \
#  -f secret_config.yaml \
#  -f jupyter_config.yaml

helm install pangeo/pangeo --devel \
   --namespace=pangeo --name=pangeohub  \
   -f secret_config.yaml \
   -f jupyter_config.yaml
