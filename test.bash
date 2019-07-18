#!/bin/bash
id
cd /home/kessler/paas-labs/ofer-cd

export KUBECONFIG=$PWD/kubeconfig

echo "Cluster Info/n"
kubectl cluster-info

echo "Pod list for namespace gocd/n"
splatt kubectl -n gocd get all

echo "Helm list"
helm list

exit