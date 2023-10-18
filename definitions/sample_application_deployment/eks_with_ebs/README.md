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
kubectl run -it --rm --image=mysql:5.6 --restart=Never mysql-client -- mysql -h mysql -ppassword
```