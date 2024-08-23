terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.107.0"
    }
  }
 # cloud {
 #   hostname     = "app.terraform.io"
 #   organization = "xxxxx" # organization name
 #
 #   workspaces {
 #     name = "xxxxx" # workspace name
 #   }
 # }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
  storage_use_azuread        = true
}

provider "azurerm" {
  alias = "hub"
  features {}
  skip_provider_registration = true
  storage_use_azuread        = true
  subscription_id            = "xxx" # subscription of hub
}