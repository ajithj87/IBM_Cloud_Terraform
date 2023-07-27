# Image for Virtual Server Insance
data "ibm_is_image" "centos" {
  name = "ibm-centos-7-6-minimal-amd64-1"
}

# Virtual Server Insance
resource "ibm_is_instance" "vsi1" {
  name    = "${local.BASENAME}-vsi1"
  vpc     = ibm_is_vpc.vpc-instance.id
  keys    = [data.ibm_is_ssh_key.ssh_key_id.id]
  zone    = local.ZONE
  image   = data.ibm_is_image.centos.id
  profile = "cx2-2x4"

  # References to the subnet and security groups
  primary_network_interface {
    subnet          = ibm_is_subnet.subnet1.id
    security_groups = [ibm_is_security_group.sg1.id]
  }
}

# Request a foaling ip 
resource "ibm_is_floating_ip" "fip1" {
  name   = "${local.BASENAME}-fip1"
  target = ibm_is_instance.vsi1.primary_network_interface[0].id
}

/*
# Try to logon to the Virtual Service Instance
output "sshcommand" {
   value = "ssh root@ibm_is_floating_ip.fip1.address"
}
*/
