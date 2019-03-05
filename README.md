# Ubuntu docker for installing a kubernetes cluster on GCP

Bash script mentioned on https://kubernetes.io/docs/setup/turnkey/gce/ for installing a kubernetes cluster on GCP is well tested only on Linux machines. Trying to use it on Mac ran into several issues.

This docker container makes it possible to run that easily on Mac.

docker build -t ypraveen/gcp-k8s:latest ./

docker run -it -v /Users/ypraveen:/root ypraveen/gcp-k8s bash

cd kubernetes/

NUM_NODES=1 KUBE_GCE_ZONE=us-west1-a KUBE_GCE_NETWORK=metrotest CLUSTER_NAME=metrotest cluster/kube-up.sh
 
