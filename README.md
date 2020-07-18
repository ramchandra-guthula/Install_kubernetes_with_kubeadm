## Ansible playbook to deploy kubernetes cluster with Kubeadm 

   Kubernetes is a portable, extensible, open-source platform for managing containerized workloads and services, that facilitates both declarative configuration and automation. It has a large, rapidly growing ecosystem. Kubernetes services, support, and tools are widely available.

**Prerequsites**
- EC2 instance with a role having access to create EC2, SecurityGroup 
- private key with devops.pem tag 
- Update ``` group_vars/k8_master_vars ```  with your aws account resource ID's

**How to use?**

```
git clone https://github.com/ramchandra-guthula/kubernetes_with_kubeadm.git
cd kubernetes_with_kubeadm
ansible-playbook  --private-key devops.pem kubernetes.yml

```

**Resources creaated by this playbook**
- One Master node
- Two worker nodes 




