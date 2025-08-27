
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.0"
    }
  }

backend "azurerm" {
   
   resource_group_name = "GaneshayaNamah"
   storage_account_name = "ganeshayanamah"
   container_name = "ganeshayanamah"
   key = "ganeshayanamahterraform.tfstate"
 
  }

}



provider "azurerm" {
    subscription_id = "e8e67e49-af5a-4a37-abc9-4599917aee83"
  features {}
}

module "rgchild" {
  source = "../RGchild"
  resource_group_name = "GaneshayaNamah2"
  location = "East US"
}