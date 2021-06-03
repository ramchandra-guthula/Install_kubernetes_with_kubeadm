#!/bin/bash

echo -e "\nChecking docker and ansible installations \n"

############## function to install Ansible ######################
ansible_install(){
ansible --version >> /dev/null
if [ $? != 0 ];
then
sudo amazon-linux-extras install ansible2 -y
else 
echo -e "============Good Ansible is already installed===================\n"
fi
}

################## Installing Boto3 ###########################
boto3_install(){
pip show boto3 >> /dev/null
if [ $? != 0 ];
then
yum install python-pip -y
pip install boto3
pip install boto
else 
echo -e "============Boto3 is already Installed===================\n"
fi
}


##################### Function to install Docker ########################
docker_install(){
docker --version >> /dev/null
if [ $? != 0 ];
then
yum install docker -y
service docker enable
service docker start
else
echo -e "==================== Docker already Installed ====================\n"
fi
}
ansible_install
docker_install
boto3_install

echo -e "========================== Finding Devops.pem keypair ==================\n"
if [ -f $PWD/devops.pem ]
  then
    echo -e  "========================== Devops.pem Keypair exists====================\n"
    chmod 400 $PWD/devops.pem
  else
    echo -e "========================== Devops Keypar doesn't exist ==================\n"
    exit 1
fi

echo "+------------------------------------------+"
printf "| Creating Kube cluster with Kubeadm in AWS |\n" "`date`"
echo "|                                          |"
printf "| Press any key to proceed Further |\n" "$@"
echo "+------------------------------------------+"
read anykey

############ Getting  vars from the Vars ##############

echo "Enter your VPC ID ==>"
read vpc
echo "Enter your Region ==>"
read region_name
echo "Name of your private key without .pem ==> "
read private_key_name
echo " Enter your subnet ID ==>"
read subnet
echo "Enter your Image ID ==>"
read image

echo -e "Creating cluster with following details \n-\e[32m$vpc \n-\e[32m$region_name \n-\e[32m$private_key_name \n-\e[32m$subnet \n-\e[32m$image \n"


############## Running ansible command to create the cluster ##################

ansible-playbook  --private-key "$private_key_name".pem -e vpc_id=$vpc  -e region=$region_name -e private_key=$private_key_name -e subnet_id=$subnet -e image=$image  kubernetes.yml
