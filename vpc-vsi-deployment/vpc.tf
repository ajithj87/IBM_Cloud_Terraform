# Virtual Private Cloud
resource "ibm_is_vpc" "vpc-instance" {
  name = "${local.BASENAME}-vpc"
}

# Security group
resource "ibm_is_security_group" "sg1" {
   name = "${local.BASENAME}-sg1"
   vpc  = ibm_is_vpc.vpc-instance.id
}

# allow all incoming network traffic on port 22
resource "ibm_is_security_group_rule" "example-ingress_ssh_all" {
   group     = ibm_is_security_group.sg1.id
   direction = "inbound"
   remote    = "0.0.0.0/0"

   tcp {
     port_min = 22
     port_max = 22
   }
}

# Subnet 
resource "ibm_is_subnet" "subnet1" {
   name                     = "${local.BASENAME}-subnet1"
   vpc                      = ibm_is_vpc.vpc-instance.id
   zone                     = local.ZONE
   total_ipv4_address_count = 256
}