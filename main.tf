provider "azurerm" {
  features {}
}
terraform {
  required_providers {
   restapi = {
      source  = "Mastercard/restapi"
      version = "3.0.0"
    }
      cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "5.19.0-beta.5"
    }
      azapi = {
      source  = "Azure/azapi"
      version = "2.9.0"
    }
      github = {
      source  = "integrations/github"
      version = "6.11.1"
    }
     datadog = {
      source  = "DataDog/datadog"
      version = "4.5.0"
    }
     modtm = {
      source  = "Azure/modtm"
      version = "0.3.5"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.65.0"
    }
     ovh = {
      source  = "ovh/ovh"
      version = "2.13.1"
    }
      infisical = {
      source  = "Infisical/infisical"
      version = "0.16.18"
    }
     clickhouse = {
      source  = "ClickHouse/clickhouse"
      version = "3.14.0"
    }
     auth0 = {
      source  = "auth0/auth0"
      version = "1.43.0"
    }
    temporalcloud = {
      source  = "temporalio/temporalcloud"
      version = "1.3.0"
    }
    okta = {
      source  = "okta/okta"
      version = "6.9.0"
    }
     dnsimple = {
      source  = "dnsimple/dnsimple"
      version = "2.0.1"
    }
     mongodbatlas = {
      source  = "mongodb/mongodbatlas"
      version = "2.11.0"
    }
  }
}

provider "azapi" {
  # Configuration options
}


resource "azurerm_resource_group" "example" {
  name     = "example-resources-1234"
  location = "West Europe"
}

resource "azurerm_storage_account" "example" {
  name                     = "sa27apr"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

