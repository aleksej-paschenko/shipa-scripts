#!/bin/bash

./shipa pool-add kube --provisioner=kubernetes
addr="$(minikube ip):8443"

MINIKUBE_CA="$HOME/.minikube/ca.crt"

CLIENTCERT="$HOME/.minikube/client.crt"
CLIENTKEY="$HOME/.minikube/client.key"

./shipa cluster-add kube-cluster kubernetes --pool kube --addr $addr --cacert=$MINIKUBE_CA --clientkey=$CLIENTKEY --clientcert=$CLIENTCERT
