#!/bin/bash 

for cluster in $(eksctl get cluster | grep -v NAME | gawk '{print $1}')
do
        eksctl delete cluster $cluster
done
