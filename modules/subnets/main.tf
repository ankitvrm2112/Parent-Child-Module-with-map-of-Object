resource "azurerm_subnet" "Subnet" {
  for_each = var.subnets
  name                 = each.value.subnet_name
  resource_group_name  = "${var.environment}-${var.resource_groups[each.value.rg_vnet_key].name}"
  virtual_network_name = "${var.environment}-${each.value.vnet_name}"
  address_prefixes     = each.value.address_prefixes
}
