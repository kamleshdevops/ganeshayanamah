resource "azurerm_resource_group" "kk" {
  name     = var.resource_group_name
  location = var.location
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resource group"
  type        = string
}
