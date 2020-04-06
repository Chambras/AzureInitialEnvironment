resource "azurerm_recovery_services_vault" "recoverVault" {
  name                = "${var.suffix}${var.rvName}"
  location            = azurerm_resource_group.genericRG.location
  resource_group_name = azurerm_resource_group.genericRG.name
  sku                 = var.rvSKU

  soft_delete_enabled = true

  tags = var.tags
}
