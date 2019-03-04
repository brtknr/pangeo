#!/bin/bash

set -e
. config

helm upgrade --force --recreate-pods ${NAMESPACE} pangeo/pangeo \
   -f secret_config.yaml \
   -f jupyter_config.yaml \
   --version ${VERSION}
