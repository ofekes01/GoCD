#!/bin/bash
id
cd /home/kessler/paas-labs/ofer-cd

export KUBECONFIG=$PWD/kubeconfig

#echo "Cluster Info/n"
#kubectl cluster-info

#echo "Pod list for namespace gocd/n"
source /home/kessler/v0.19.2/bin/activate
#splatt kubectl -n gocd get all

#echo "Helm list"
#helm list

# echo $CHART_NAME

if [ -z $CHART_NAME ]; then
	echo "no chart name"
	exit 1
fi

case "$1" in
'apply')
echo "Applying chart"
splatt apply chart ${HOME}/pipelines/${GO_PIPELINE_NAME}/${CHART_NAME}
;;
'status')
echo "Check Chart status "
splatt helm status  ${HOME}/pipelines/${GO_PIPELINE_NAME}/${CHART_NAME}
;;
'render')
echo "Render Chart  "
splatt apply chart ${HOME}/pipelines/${GO_PIPELINE_NAME}/${CHART_NAME} -r
;;
'help')
echo "Usage: $0 [apply|status]"
;;
esac