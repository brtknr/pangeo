#!/bin/bash

set -e
. config

helm upgrade --install ${NAMESPACE} pangeo/pangeo --devel \
   -f secret_config.yaml \
   -f jupyter_config.yaml \
   --version ${VERSION}
