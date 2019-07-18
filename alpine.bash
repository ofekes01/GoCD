#!/bin/bash
id
cd /home/kessler/paas-labs/ofer-cd

export KUBECONFIG=$PWD/kubeconfig

echo "Cluster Info/n"
kubectl cluster-info

echo "Pod list for namespace gocd/n"
source /home/kessler/v0.19.2/bin/activate
splatt kubectl -n gocd get all

echo "Helm list"
helm list

exit