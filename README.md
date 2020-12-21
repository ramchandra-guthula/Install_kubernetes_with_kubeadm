## Ansible playbook to deploy kubernetes cluster with Kubeadm 

   Kubernetes is a portable, extensible, open-source platform for managing containerized workloads and services, that facilitates both declarative configuration and automation. It has a large, rapidly growing ecosystem. Kubernetes services, support, and tools are widely available.

**Prerequsites**
- EC2 instance with a role having access to create EC2, SecurityGroup 
- Private key with devops.pem tag place it in project directory(set the private key permissons to 400  ```chmod 400 private_key.pem``` )
- keep below parameters Handy 
   - vpc_id
   - region
   - private_key
   - subnet_id
   - image_id
   
**How to use?**

```
git clone https://github.com/ramchandra-guthula/Install_kubernetes_with_kubeadm.git
cd Install_kubernetes_with_kubeadm
sh create_cluster.sh  #Pass the parameters what script has promted for

```

**Resources created by this playbook**
- One Master node
- Two worker nodes 




