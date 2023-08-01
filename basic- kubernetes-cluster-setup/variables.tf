#Input Variables
variable "ibmcloud_api_key" {
  type        = string
  description = "IBM Cloud API Key"
}

variable "iaas_classic_username" {
  type        = string
  description = "IBM Cloud Classic Username"
}

variable "iaas_classic_api_key" {
  type        = string
  description = "IBM Cloud Classic API Key"
}

/*
variable "flavor" {
  default = "bx2.4x16"
  description = "Default worker node flaver. Use 'ibmcloud ks flavors --zone us-south-1' to verify the availability."
}

*/

/*
variable "worker_count" {
  default = "1"
  description = "Default worker node count is set to 1"
}

*/

/*
variable "kubernetes_pricing" {
  default = "tiered-pricing"
  description = "Kubernetes Cluster pricing."
}

*/

variable "region" {
  default = "us-south"
  description = "IBM Cloud region for the Kubernetes Cluster"
}

variable "kube_version" {
  default = "1.26.7"
  description = "The tested Kubernetes Cluster version for the example is 1.26.7"
}

variable "cluster_name" {
  default = "test-cluster-free"
  description = "Kubernetes Cluster Name"
}

variable "public_vlan_id" {
  default = "3350241"
  description = "Piblic vlan id"
}

variable "private_vlan_id" {
  default = "3350243"
  description = "Piblic vlan id"
}

variable "hardware" {
  default = "shared"
  description = "hardware"
}

variable "machine_type" {
  default = "b3c.4x16"
  description = "Machine Type"
}

variable "datacenter" {
  default = "mil01"
  description = "datacenter"
}

