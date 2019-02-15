#!/bin/bash

echo 'Starting deployments'
for filename in `ls ../kube/*.yaml`; do
	 kubectl apply -f $filename
done

echo 'Setup done!'
url=`minikube service ambassador --url`
echo 'You can start making requests to:' $url;