terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.90.0"
    }
  }
}

module "module_dev" {
    source = "./modules"
    resource_group_name              = "dev-resource-group"
    location                         = "East US"
    vnet                             = "dev-vnet1"
    vm_name                          = "dev-vm"
    vm_size                          = "Standard_DS1_v2"
    key_vault_name                   = "dev-keyy-vault"
    nicname                          = "dev12NIC"
    subnet                           = "dev-subnet"
    storage_account_name             = "dev12storageaccount"
    storage_account_tier             = "Standard"
    storage_account_replication_type = "LRS"
}

module "module_qa" {
    source = "./modules"
    resource_group_name              = "qa-resource-group"
    location                         = "West US"
    vnet                             = "qa-vnet1"
    vm_name                          = "qa-vm"
    vm_size                          = "Standard_DS2_v2"
    key_vault_name                   = "qa-keyy-vault"
    nicname                          = "qa12NIC"
    subnet                           = "qa-subnet"
    storage_account_name             = "qa12storageaccount"
    storage_account_tier             = "Standard"
    storage_account_replication_type = "GRS"
}

module "module_preprod" {
    source = "./modules"
    resource_group_name              = "preprod-resource-group"
    location                         = "North Europe"
    vnet                             = "preprod-vnet1"
    vm_name                          = "preprod-vm"
    vm_size                          = "Standard_DS2_v2"
    key_vault_name                   = "preprod-keyy-vault"
    nicname                          = "preprod12NIC"
    subnet                           = "preprod-subnet"
    storage_account_name             = "preprod12storageaccount"
    storage_account_tier             = "Standard"
    storage_account_replication_type = "GRS"

}

module "module_prod" {
    source = "./modules"
    resource_group_name          = "prod-resource-group"
    location                         = "Central US"
    vnet                             = "prod-vnet1"
    vm_name                          = "prod-vm"
    vm_size                          = "Standard_DS3_v2"
    key_vault_name                   = "prod-keyy-vault"
    nicname                          = "prod12NIC"
    subnet                           = "Prod-subnet"
    storage_account_name             = "prod12storageaccount"
    storage_account_tier             = "Standard"
    storage_account_replication_type = "GRS"

}