#!/bin/bash

# **************** Global variables
source variables.env

# **************** logon with IBM Cloud CLI **************** 

echo "*********************************"
echo ""
echo "1. Logon with IBM Cloud CLI "
ibmcloud login --apikey $IC_API_KEY
ibmcloud target -r $REGION
ibmcloud target -g $GROUP
ibmcloud plugin update
ibmcloud plugin list
#ibmcloud is target --gen 2

# **************** install needed plugins **************** 
#ibmcloud plugin install vpc-infrastructure
#ibmcloud plugin install container-service

# **************** init **************** 

echo "*********************************"
echo ""
echo "2. Initialize Terraform on IBM Cloud"
terraform init

# **************** Format **************** 

echo "*********************************"
echo ""
echo "3. Format the document"
terraform fmt

# **************** Validate**************** 

echo "*********************************"
echo ""
echo "4. Validate the document"
terraform validate

# **************** plan **************** 

echo "*********************************"
echo ""
echo "5. Generate a Terraform on IBM Cloud execution plan for the VPC infrastructure resources"
terraform plan

# **************** apply *************** 

echo "*********************************"
echo ""
echo "6. Apply a the Terraform on IBM Cloud execution plan for the VPC infrastructure resources"
terraform apply

#echo "*********************************"
#echo ""
#echo "Verify the setup with the IBM Cloud CLI"

#ibmcloud is vpcs
#ibmcloud is subnets
#ibmcloud is security-groups 
#ibmcloud is keys
#ibmcloud ks cluster ls
#ibmcloud ks flavors --zone mil01
#ibmcloud ks flavors --zone us-south-2

#echo "*********************************"
#echo ""
#echo "5. Verify the created VPC instructure on IBM Cloud: https://cloud.ibm.com/vpc-ext/vpcLayout"
#read ANYKEY

#echo "*********************************"
#echo ""
#echo "6. Verify the created Kubernetes Cluster instance on IBM Cloud: https://cloud.ibm.com/kubernetes/clusters"
#read ANYKEY

# **************** destroy ************* 
#echo "*********************************"
#echo ""
#echo "7. Remove VPC infrastructure resources"
#terraform destroy