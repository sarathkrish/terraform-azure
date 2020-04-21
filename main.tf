provider "azurerm" {

  ##Pinning version for working code, 2.0 requires changes for this template/solution to work##
  version = "=1.44.0"
}


terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Metsian"


    workspaces {
      name = "ModulesTest2"
    }
  }
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "Virginia"
}



