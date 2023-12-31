# install docker in MAC:

brew install --cask docker

# MiniKube installation on azure VM:

Pré-Requisites before create your VM on Azure: It’s necessary a machine with nested virtualization. The CPU family with suffix _v3 gives this support, ex: Standard D2s v3, Standard D4s v3. Standard D2s v3 is a good choice to start I am using: Linux (ubuntu 18.04)

Login to VM using putty:

## Commands
```bash
# Installing Docker
$ curl -fsSL https://get.docker.com | sh
$ sudo usermod -aG docker $USER && newgrp docker
```
```bash
# Installing VirtualBox

$ sudo apt install virtualbox virtualbox-ext-pack
```
```bash

# Installing Minikube Updating the system:

$ sudo apt update -y
$ sudo apt upgrade -y
```
```bash

# To install the latest minikube stable release on x86–64 Linux using binary download:

$ sudo apt install -y curl wget apt-transport-https

$ curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
 
$ sudo install minikube-linux-amd64 /usr/local/bin/minikube
```
```bash

# Installing Kubectl

$ curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

$ sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

$ kubectl version --client
```
```bash

# To Start Minikube

$ minikube start
```
```bash

# Check Status

$ minikube status

minikube
type: Control Plane
host: Running
kubelet: Running
apiserver: Running
kubeconfig: Configured

```
```bash
# Get Nodes

$ kubectl get nodes

NAME       STATUS   ROLES           AGE   VERSION
minikube   Ready    control-plane   64s   v1.25.0
```
```bash

# Addons Only a few addons are enabled by default during the installation but you can turn on

$ minikube addons list

```
```bash

# To activate add-ons, please run:
$ minikube addons enable <addon-name>
```
```bash


# Running the First Deployment

$ kubectl create deployment my-nginx --image=nginx

$ kubectl get deployments.apps my-nginx

$ kubectl get pods
```
