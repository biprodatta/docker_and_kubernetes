# Kubernetes useful commands:

## Commands
```bash
#List all namespaces in the cluster
kubectl get namespaces
```
```bash
# List all services in the namespace
kubectl get services
```
```bash
# List all pods in all namespaces
kubectl get pods --all-namespaces
```
```bash
# List all pods in the current namespace, with more details                                     
kubectl get pods -o wide
```
```bash
# List a particular deployment                     
kubectl get deployment deployment-name
```
```bash
# List all pods in the namespace                
kubectl get pods
```
```bash
# Get a pod's YAML                              
kubectl get pod my-pod -o yaml
```

```bash
appuser@minikube-vm:~$ kubectl get namespaces
NAME              STATUS   AGE
default           Active   3h40m
kube-node-lease   Active   3h40m
kube-public       Active   3h40m
kube-system       Active   3h40m
```
```bash
appuser@minikube-vm:~$ kubectl get services
NAME         TYPE        CLUSTER-IP   EXTERNAL-IP   PORT(S)   AGE
kubernetes   ClusterIP   10.96.0.1    <none>        443/TCP   3h40m
```
```bash
appuser@minikube-vm:~$ kubectl get pods --all-namespaces
NAMESPACE     NAME                               READY   STATUS    RESTARTS       AGE
default       test-pod                          1/1     Running   1 (154m ago)   3h28m
kube-system   coredns-5d78c9869d-cnj6q           1/1     Running   1 (154m ago)   3h41m
kube-system   etcd-minikube                      1/1     Running   1 (154m ago)   3h41m
kube-system   kube-apiserver-minikube            1/1     Running   1 (154m ago)   3h41m
kube-system   kube-controller-manager-minikube   1/1     Running   1 (154m ago)   3h41m
kube-system   kube-proxy-jnd5w                   1/1     Running   1 (154m ago)   3h41m
kube-system   kube-scheduler-minikube            1/1     Running   1 (154m ago)   3h41m
kube-system   storage-provisioner                1/1     Running   3 (13m ago)    3h41m
```
```bash
appuser@minikube-vm:~$ kubectl get pods -o wide
NAME        READY   STATUS    RESTARTS       AGE     IP           NODE       NOMINATED NODE   READINESS GATES
test-pod   1/1     Running   1 (154m ago)   3h28m   10.244.0.5   minikube   <none>           <none>
```
```bash
appuser@minikube-vm:~$ kubectl get deployment deployment-name
Error from server (NotFound): deployments.apps "deployment-name" not found
```
```bash
appuser@minikube-vm:~$ kubectl get pods
NAME        READY   STATUS    RESTARTS       AGE
test-pod   1/1     Running   1 (155m ago)   3h29m
```
