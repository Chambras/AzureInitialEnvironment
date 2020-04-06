output "generic_RG" {
  value = azurerm_resource_group.genericRG.name
}

## Automation Account
output "automationAccountID" {
  value = azurerm_automation_account.aAccount.id
}

output "automationAccountEndPoint" {
  value = azurerm_automation_account.aAccount.dsc_server_endpoint
}

output "automationAccountAccessKey" {
  value = azurerm_automation_account.aAccount.dsc_primary_access_key
}

## LA
output "logAnalyticsID" {
  value = azurerm_log_analytics_workspace.laWorkspace.id
}

output "logAnalyticsKey" {
  value = azurerm_log_analytics_workspace.laWorkspace.primary_shared_key
}

output "logAnalyticsWokSpaceID" {
  value = azurerm_log_analytics_workspace.laWorkspace.workspace_id
}

output "logAnalyticsPortalURL" {
  value = azurerm_log_analytics_workspace.laWorkspace.portal_url
}

## RSV
output "recoveryServicesID" {
  value = azurerm_recovery_services_vault.recoverVault.id
}

## SA
output "storageAccountID" {
  description = "The storage account Resource ID."
  value       = "${azurerm_storage_account.genericSA.id}"
}

output "storageAccountKey" {
  description = " Access Key to access the SA."
  value       = "${azurerm_storage_account.genericSA.primary_access_key}"
}
