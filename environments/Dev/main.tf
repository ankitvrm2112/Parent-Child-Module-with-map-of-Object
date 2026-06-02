module "resource_group" {
  source = "../../modules/resource group"

  resource_groups = var.resource_groups
  environment     = var.environment
}

module "storage_account" {
  source = "../../modules/storage account"

  depends_on       = [module.resource_group]
  resource_groups  = var.resource_groups
  storage_accounts = var.storage_accounts
  environment      = var.environment

}


module "vnet" {
  source          = "../../modules/vnet"
  depends_on      = [module.resource_group]
  resource_groups = var.resource_groups
  vnet            = var.vnet
  environment     = var.environment
}

module "subnets" {
  source          = "../../modules/subnets"
  depends_on      = [module.resource_group, module.vnet]
  resource_groups = var.resource_groups
  vnet            = var.vnet
  subnets         = var.subnets
  environment     = var.environment
}
