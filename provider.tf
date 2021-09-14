terraform {
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
      version = "~> 1.12.0"
    }
  }
}

# Configure the IBM Provider

provider "ibm" {
    #version          = ">= 0.18.0"
    #ibmcloud_api_key = "${var.ibmcloud_api_key}"
    region           = "var.ibmcloud_region"
    zone             = "var.ibmcloud_zone"
}
