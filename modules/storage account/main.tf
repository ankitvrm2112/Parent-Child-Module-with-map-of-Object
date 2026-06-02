resource "azurerm_storage_account" "storage_account" {
  for_each = var.storage_accounts
  name                     = "${var.environment}${each.value.name}"
  resource_group_name      = "${var.environment}-${var.resource_groups[each.value.rg_key].name}"
  location                 = var.resource_groups[each.value.rg_key].location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
}