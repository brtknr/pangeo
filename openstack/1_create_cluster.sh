#!/bin/bash

set -e

terraform apply -auto-approve -var-file=prod.tfvars
kubectl create -f cinder-sc.yaml
