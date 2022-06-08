## Ansible playbook to deploy kubernetes cluster with Kubeadm 

![env](https://img.shields.io/badge/env-aws-orange)
![GitHub pull requests](https://img.shields.io/github/issues-pr/ramchandra-guthula/Install_kubernetes_with_kubeadm)
![anisble](https://img.shields.io/badge/ansible-2.9-orange)
![kubernetes](https://img.shields.io/badge/kubernetes-1.21-blue)
![GitHub forks](https://img.shields.io/github/forks/ramchandra-guthula/Install_kubernetes_with_kubeadm?style=social)

   Kubernetes is a portable, extensible, open-source platform for managing containerized workloads and services, that facilitates both declarative configuration and automation. It has a large, rapidly growing ecosystem. Kubernetes services, support, and tools are widely available.

**Prerequsites**
- EC2 instance with a role having access to create EC2, SecurityGroup 
- Private key with name devops.pem tag place it in same project directory, Just `cat` your pem file content and create a new file name devops.pem in your jump server instance
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




