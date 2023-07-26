terraform {
  required_providers {
    ibm = {
      source  = "IBM-Cloud/ibm"
      version = "1.55.0"
    }
  }
}

# Configure the IBM Provider
provider "ibm" {
  ibmcloud_api_key      = var.ibmcloud_api_key
  iaas_classic_username = var.iaas_classic_username
  iaas_classic_api_key  = var.iaas_classic_api_key
  region                = var.region
}
