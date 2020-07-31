## Ansible playbook to deploy kubernetes cluster with Kubeadm 

   Kubernetes is a portable, extensible, open-source platform for managing containerized workloads and services, that facilitates both declarative configuration and automation. It has a large, rapidly growing ecosystem. Kubernetes services, support, and tools are widely available.

**Prerequsites**
- EC2 instance with a role having access to create EC2, SecurityGroup 
- Private key with devops.pem tag place it in project directory
~~- Update ``` group_vars/k8_master_vars ```  with your aws account resource ID's ~~
- keep below parameters Handy 
   - vpc_id
   - region
   - private_key
   - subnet_id
   - image_id
   
**How to use?**

```
git clone https://github.com/ramchandra-guthula/kubernetes_with_kubeadm.git
cd kubernetes_with_kubeadm
~~ ansible-playbook  --private-key devops.pem kubernetes.yml ~~
sh create_cluster.sh  #Pass the parameters what script has promted for

```

**Resources creaated by this playbook**
- One Master node
- Two worker nodes 




