variable "resource_groups" {}


variable "subnets" {
  type = map(object({
    subnet_name      = string
    rg_vnet_key           = string
    vnet_name        = string
    address_prefixes = list(string)
  }))
}
variable "environment" {
  type = string
}

variable "vnet" {}

