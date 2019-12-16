#!/bin/bash

set -e

terraform apply -auto-approve
kubectl create -f cinder-sc.yaml
