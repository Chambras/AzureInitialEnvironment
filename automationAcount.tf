resource "azurerm_automation_account" "aAccount" {
  name                = "${var.suffix}${var.aaName}"
  location            = azurerm_resource_group.genericRG.location
  resource_group_name = azurerm_resource_group.genericRG.name

  sku_name = var.aaSKU

  tags = var.tags
}
