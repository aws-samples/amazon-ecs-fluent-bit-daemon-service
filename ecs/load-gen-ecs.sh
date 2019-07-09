#!/bin/bash

################################################################################
# Generate load for the NGINXs services in ECS

nginxurls=$(ecs-cli ps --desired-status RUNNING | grep nginx | awk '{ split($3, url, "-") ; print(url[1]) }')
while true
do
    printf "Hit " 
    for nginxurl in $nginxurls
    do
        curl -s $nginxurl  > /dev/null
        printf "$nginxurl "
    done
    printf "\n"
    sleep 2
done