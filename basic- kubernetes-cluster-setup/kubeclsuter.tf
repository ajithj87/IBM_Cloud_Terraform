/*
data ibm_resource_group "resource_group" {
    name = "default"
}
*/

resource ibm_container_cluster "tfcluster" {
name            = var.cluster_name
datacenter      = var.datacenter
machine_type    = var.machine_type
hardware        = var.hardware
public_vlan_id  = var.public_vlan_id
private_vlan_id = var.private_vlan_id
#worker_count    =  "1"
#resource_group   = "default"

kube_version = var.kube_version

#default_pool_size = 3
    
#public_service_endpoint  = "true"
#private_service_endpoint = "true"

#resource_group_id = data.ibm_resource_group.resource_group.id
}

/*


resource "ibm_container_cluster" "test_cluster" {
  name              = "${var.cluster_name}"
  #vpc_id            = ibm_is_vpc.vpc1.id
  kube_version      = var.kube_version
  datacenter = "us-south-1"
  hardware = "Free - 2 vCPUs 4GB RAM"
  #flavor            = var.flavor
  worker_count      = var.worker_count
  #resource_group_id = data.ibm_resource_group.resource_group.id
}

*/

  /*
  zones {
    subnet_id = ibm_is_subnet.subnet1.id
    name      = local.ZONE1
  }
}

*/

/*

data "ibm_container_cluster_config" "cluster_config" {
  cluster_name_id = ibm_container_cluster.cluster.id
}

*/