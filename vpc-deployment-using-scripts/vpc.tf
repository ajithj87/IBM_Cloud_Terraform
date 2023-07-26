# Vpc creation
resource "ibm_is_vpc" "test-vpc" {
  name = "${local.BASENAME}-vpc"
}

# Security group creation
resource "ibm_is_security_group" "test-sg1" {
  name = "${local.BASENAME}-sg1"
  vpc  = ibm_is_vpc.test-vpc.id
}

# Allow all incoming network traffic on port 22
resource "ibm_is_security_group_rule" "test-ingress_ssh_all" {
  group     = ibm_is_security_group.test-sg1.id
  direction = "inbound"
  remote    = "0.0.0.0/0"

  tcp {
    port_min = 22
    port_max = 22
  }
}

# Subnet creation
resource "ibm_is_subnet" "test-subnet1" {
  name                     = "${local.BASENAME}-subnet1"
  vpc                      = ibm_is_vpc.test-vpc.id
  zone                     = local.ZONE
  total_ipv4_address_count = 256
}
