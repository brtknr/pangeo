#!/bin/bash

set -e
. config

source magnum-tiller

helm upgrade --force --recreate-pods ${NAMESPACE} pangeo/pangeo \
   -f secret_config.yaml \
   -f jupyter_config.yaml \
   --version ${VERSION}
