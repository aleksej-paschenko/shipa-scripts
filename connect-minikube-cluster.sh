#!/bin/bash

./shipa pool-add kube --provisioner=kubernetes
addr="192.168.99.104:8443"

MINIKUBE_CA="/home/aleksej/.minikube/ca.crt"

CLIENTCERT="/home/aleksej/.minikube/client.crt"
CLIENTKEY="/home/aleksej/.minikube/client.key"


./shipa cluster-add kube-cluster kubernetes --pool kube --addr $addr --cacert=$MINIKUBE_CA --clientkey=$CLIENTKEY --clientcert=$CLIENTCERT
