#Input Variables Declaration
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

variable "region" {
  type        = string
  description = "IBM Cloud region for the Kubernetes Cluster"
}

variable "kube_version" {
  default     = "1.26.7"
  description = "he Kubernetes version that you want to set up in your cluster"
}

variable "cluster_name" {
  default     = "my-cluster-free"
  description = "The name of the cluster"
}

variable "hardware" {
  default     = "shared"
  description = "The level of hardware isolation for your worker node"
}

variable "machine_type" {
  default     = "free"
  description = "The machine type for your worker node"
}

variable "datacenter" {
  default     = "mil01"
  description = "The datacenter where you want to provision the worker nodes"
}

/*

variable "public_vlan_id" {
  default = "3350241"
  description = "The ID of the public VLAN that you want to use for your worker nodes"
}

variable "private_vlan_id" {
  default = "3350243"
  description = "The ID of the private VLAN that you want to use for your worker nodes"
}

variable "flavor" {
  default = "bx2.4x16"
  description = "Default worker node flaver. Use 'ibmcloud ks flavors --zone us-south-1' to verify the availability."
}

variable "worker_count" {
  default = "1"
  description = "Default worker node count is set to 1"
}

variable "kubernetes_pricing" {
  default = "tiered-pricing"
  description = "Kubernetes Cluster pricing."
}

*/
