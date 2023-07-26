# Create a Virtual Private Cloud (VPC) on IBM Cloud with Terraform

Architecture
------------
The arch diagram shows the target architecture for this deployment. We will create:

one virtual private cloud (VPC)
one virtual server instance (VSI)one security group with a security group access control rule
one subnet

Files Used
----------
provider.tf - provider details
terraform.tfvars - This file contains variables and values we use in the provider.tf file.
vpc.tf - vpc configuration
variables.tf - variables declarion

# We have created 3 VPC resources. Lets verify the created resources using the below IBM Cloud CLI commands.

ibm_is_vpc.test-vpc: Creating...
ibm_is_vpc.test-vpc: Still creating... [10s elapsed]
ibm_is_vpc.test-vpc: Still creating... [20s elapsed]
ibm_is_vpc.test-vpc: Creation complete after 20s [id=r006-67a97909-aabb-4f71-baa2-b93116bee50c]
ibm_is_subnet.test-subnet1: Creating...
ibm_is_security_group.test-sg1: Creating...
ibm_is_security_group.test-sg1: Creation complete after 4s [id=r006-52624c5e-88a6-42af-bf0c-31305b50fa9c]
ibm_is_security_group_rule.test-ingress_ssh_all: Creating...
ibm_is_security_group_rule.test-ingress_ssh_all: Creation complete after 2s [id=r006-52624c5e-88a6-42af-bf0c-31305b50fa9c.r006-e752b24a-9518-461d-bc21-e05bf2768b2d]
ibm_is_subnet.test-subnet1: Still creating... [10s elapsed]
ibm_is_subnet.test-subnet1: Creation complete after 15s [id=0717-69a17f9c-f499-4794-81a7-779257a5e021]

$ ibmcloud is vpcs
Listing vpcs in all resource groups and region us-south under account Ajith Jesudasan's Account as user ajith.devopspractice@gmail.com...
ID                                          Name          Status      Classic access   Default network ACL               Default security group                  Resource gr
oup
r006-67a97909-aabb-4f71-baa2-b93116bee50c   example-vpc   available   false            perceive-unrefined-poppy-abacus   antibody-countless-afterward-doorknob   Default

$ ibmcloud is subnets
Listing subnets in all resource groups and region us-south under account Ajith Jesudasan's Account as user ajith.devopspractice@gmail.com...
ID                                          Name              Status      Subnet CIDR     Addresses   ACL                               Public Gateway   VPC           Zone
        Resource group
0717-69a17f9c-f499-4794-81a7-779257a5e021   example-subnet1   available   10.240.0.0/24   251/256     perceive-unrefined-poppy-abacus   -                example-vpc   us-so
uth-1   Default

$ ibmcloud is security-groups
Listing security groups in all resource groups and region us-south under account Ajith Jesudasan's Account as user ajith.devopspractice@gmail.com...
ID                                          Name                                    Rules   Targets   VPC           Resource group
r006-8ad3648e-d75d-4b2d-9204-af21156c612e   antibody-countless-afterward-doorknob   2       0         example-vpc   Default
r006-52624c5e-88a6-42af-bf0c-31305b50fa9c   example-sg1                             1       0         example-vpc   Default
