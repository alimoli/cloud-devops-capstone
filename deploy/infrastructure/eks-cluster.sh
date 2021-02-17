eksctl create cluster \
--name prod \
--version 1.18 \
--region us-west-2 \
--nodegroup-name linux-nodes \
--node-type t3.small \
--nodes 2 \
--nodes-min 1 \
--nodes-max 3 \
--ssh-access \
--ssh-public-key=udacity

# Create secret with docker configuration
kubectl create secret generic regcred \
--from-file=.dockerconfigjson=/tmp/.docker/config.json \
--type=kubernetes.io/dockerconfigjson