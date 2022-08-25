#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="toritseju/ml_predict"

# Step 2
# Run the Docker Hub container with kubernetes
minikube kubectl -- create deployment k8s-ml-predict --image="${dockerpath}:latest" --port=80

# Step 3:
# List kubernetes pods
minikube kubectl -- get pods

# Step 4:
# Forward the container port to a host
minikube kubectl -- port-forward pods/k8s-ml-predict-7dc685d8cc-bldhs --address 0.0.0.0 8000:80
