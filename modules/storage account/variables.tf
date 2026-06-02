variable "resource_groups" {}

variable "storage_accounts" {
  type = map(object({
    name                     = string
    rg_key                   = string
    location                 = string
    account_tier             = string
    account_replication_type = string
  }))
}

variable "environment" {
  type = string
}

