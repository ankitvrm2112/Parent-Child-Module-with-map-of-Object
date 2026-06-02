variable "resource_groups" {}


variable "vnet" {
  type = map(object({
    vnet_name     = string
    rg_vnet_key        = string
    location      = string
    address_space = list(string)
  }))
}

variable "environment" {
  type = string
}

