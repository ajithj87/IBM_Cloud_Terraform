#Kubernetes Cluster Setup Configuration for Free Tier

resource "ibm_container_cluster" "testacc_cluster" {
  name         = var.cluster_name
  datacenter   = var.datacenter
  machine_type = var.machine_type
  hardware     = var.hardware
  kube_version = var.kube_version
  region       =  var.region
}
