resource "azurerm_log_analytics_workspace" "laWorkspace" {
  name                = "${var.suffix}${var.laName}"
  location            = var.laLocation
  resource_group_name = azurerm_resource_group.genericRG.name
  sku                 = var.laSKU
  retention_in_days   = var.retentionDays

  tags = var.tags
}
