variable "location" {
  type        = string
  default     = "eastus2"
  description = "Location where the resoruces are going to be created."
}

variable "suffix" {
  type        = string
  default     = "MZV"
  description = "Suffix to use in all resources."
}

variable "rgName" {
  type        = string
  default     = "DemoRG"
  description = "Resource Group Name."
}

variable "tags" {
  type = map
  default = {
    "Environment" = "Dev"
    "Project"     = "PoC"
    "BillingCode" = "Internal"
    "Customer"    = "Demo"
  }
}

## Storage
variable "storageAccountName" {
  type        = string
  default     = "mzvtestenv"
  description = "Initial Storage Account."
}

## Log Analitycs
variable "laName" {
  type        = string
  default     = "PoCLAWorkSpace"
  description = "Specifies the name of the Log Analytics Workspace. Workspace name should include 4-63 letters, digits or '-'. The '-' shouldn't be the first or the last symbol. Changing this forces a new resource to be created."
}

variable "laSKU" {
  type        = string
  default     = "PerGB2018"
  description = "Specifies the Sku of the Log Analytics Workspace. Possible values are Free, PerNode, Premium, Standard, Standalone, Unlimited, and PerGB2018 (new Sku as of 2018-04-03). Free only supports 7 days"
}

variable "retentionDays" {
  type        = number
  default     = 30
  description = "The workspace data retention in days. Possible values range between 30 and 730."
}

variable "laLocation" {
  type        = string
  default     = "eastus"
  description = "Location where the resoruces are going to be created. Automation Account can be mapped to Log Analitycs on specific regions. https://docs.microsoft.com/en-us/azure/automation/how-to/region-mappings"
}

## Recovery Vault
variable "rvName" {
  type        = string
  default     = "PoCRV"
  description = "Specifies the name of the Recovery Services Vault. Changing this forces a new resource to be created."
}

variable "rvSKU" {
  type        = string
  default     = "Standard"
  description = "Sets the vault's SKU. Possible values include: Standard, RS0."
}

## Automation Account
variable "aaName" {
  type        = string
  default     = "PoCAA"
  description = "Specifies the name of the Automation Account. Changing this forces a new resource to be created."
}

variable "aaSKU" {
  type        = string
  default     = "Basic"
  description = "The SKU name of the account - only Basic is supported at this time."
}
