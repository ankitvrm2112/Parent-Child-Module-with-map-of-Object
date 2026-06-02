resource_groups = {
  "rg1" = {
    name     = "rg_storage1"
    location = "centralindia"
  }
  "rg2" = {
    name     = "rg_storage2"
    location = "southindia"
  }
  "rg3" = {
    name     = "rg_vnet"
    location = "westindia"
  }
}

storage_accounts = {
  "st1" = {
    name                     = "stst9425"
    rg_key                   = "rg1"
    location                 = "centralindia"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
  "st2" = {
    name                     = "stst0435"
    rg_key                   = "rg2"
    location                 = "southindia"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}
vnet = {
  "vnet" = {
    vnet_name     = "vnet"
    rg_vnet_key   = "rg3"
    location      = "westindia"
    address_space = ["10.0.0.0/16"]
  }
}
subnets = {
  "subnet1" = {
    subnet_name      = "websubnet"
    vnet_name        = "vnet"
    rg_vnet_key      = "rg3"
    address_prefixes = ["10.0.4.0/24"]
  }
  "subnet2" = {
    subnet_name      = "appsubnet"
    vnet_name        = "vnet"
    rg_vnet_key      = "rg3"
    address_prefixes = ["10.0.5.0/24"]
  }
  "subnet3" = {
    subnet_name      = "dbsubnet"
    vnet_name        = "vnet"
    rg_vnet_key      = "rg3"
    address_prefixes = ["10.0.6.0/24"]
  }
}

environment = "test"


