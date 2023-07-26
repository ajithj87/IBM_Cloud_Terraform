# Locals and variables
locals {
  BASENAME = "example"
  ZONE     = "us-south-1"
}

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

variable "region" {
  type        = string
  description = "Region"
}

