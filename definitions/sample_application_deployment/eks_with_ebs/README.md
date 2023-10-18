# EKS cluster using EBS volume:

there are few pre-requisite for using ebs volume in EKS cluster:

1) EKS nodegroup role should have AmazonEBSCSIDriverPolicy and AmazonEKS_CNI_Policy builtin policy attached.
2) Deploy EBS CSI Driver :
```bash
kubectl apply -k "github.com/kubernetes-sigs/aws-ebs-csi-driver/deploy/kubernetes/overlays/stable/?ref=master"
```
3) Verify ebs-csi pods running
kubectl get pods -n kube-system

while creating storage class use below:
provisioner: ebs.csi.aws.com


# Run a MySQL client to connect to the server:

note that, for connecting a client with mysql db pod, you need to create a service with some name, then only you can use that name as host while creating a client pod.

here in this exemple, I have created a clusterIP service for my mysql db pods with name "mysql". the used same name as host while creating mysql client pod.

```bash
kubectl run -it --rm --image=mysql:5.6 --restart=Never mysql-client -- mysql -h mysql -pdbpassword11
```

after loggin in into the mysql cli, run below commands:

show databases;
show schemas;
use usermgmt;
show tables;
describe users;
select * from users;

create a contos base image and login into it's bash shell command:

```bash
kubectl run -it --rm --image=centos:latest --restart=Never linux-bash /bin/bash
kubectl run -it --rm --image=mikesplain/telnet --restart=Never linux-bash Ip_to_telnet port_to_telnet
kubectl run -it --rm --image=biprodatta/centos-telnet --restart=Never linux-bash /bin/bash
```

to check if the microservice is working or not use below command to  get external IP for the node:

kubectl get nods -o wide

then use that IP in below to hit from browser:

http://<external_ip_of_nodegroup>:32100/usermgmt/health-status