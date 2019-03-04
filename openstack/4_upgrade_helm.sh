#!/bin/bash

set -e

VERSION=v0.1.1-ede11f6
VERSION=v0.1.1-c02878a 

helm upgrade --devel --force --recreate-pods pangeohub pangeo/pangeo \
   -f secret_config.yaml \
   -f jupyter_config.yaml \
   --version=$VERSION
