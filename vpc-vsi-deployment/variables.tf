
# Locals and variables
locals {
  BASENAME = "example"
  ZONE     = "us-south-1"
}

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
  description = "Region in which the resources will get deployed"
}

variable "my_ssh_key_name" {
  type        = string
  description = "SSH Key Name"
}
