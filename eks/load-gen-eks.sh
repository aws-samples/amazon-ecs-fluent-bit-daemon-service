#!/bin/bash

################################################################################
# Generate load for the NGINXs services in EKS

# make sure to patch to LB
kubectl patch svc nginx -p '{"spec": {"type": "LoadBalancer"}}'

# give the LB 3 minutes to be up and running
echo "Now waiting for 3min until the load balancer is up ..."
sleep 180

echo "Starting to hammer the load balancer:"

nginxurl=$(kubectl get svc/nginx -o json | jq .status.loadBalancer.ingress[].hostname -r)
while true
do
    printf "Hit " 
        curl -s $nginxurl > /dev/null
        printf "$nginxurl "
    printf "\n"
    sleep 2
done