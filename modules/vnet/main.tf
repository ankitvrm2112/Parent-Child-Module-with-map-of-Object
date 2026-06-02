resource "azurerm_virtual_network" "MyVnet" {
  for_each = var.vnet
  name                = "${var.environment}-${each.value.vnet_name}"
  resource_group_name = "${var.environment}-${var.resource_groups[each.value.rg_vnet_key].name}"
  location            = var.resource_groups[each.value.rg_vnet_key].location
  address_space       = each.value.address_space
}
  