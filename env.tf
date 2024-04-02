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
    vm_name                          = "dev-vm"
    vm_size                          = "Standard_DS1_v2"
    key_vault_name                   = "dev-key-vault"
    nicname                          = "dev NIC"
    subnet                           = "dev subnet"
    storage_account_name             = "storage90987"
    storage_account_tier             = "Standard"
    storage_account_replication_type = "LRS"
}

module "module_qa" {
    source = "./modules"
    resource_group_name              = "qa-resource-group"
    location                         = "West US"
    vm_name                          = "qa-vm"
    vm_size                          = "Standard_DS2_v2"
    key_vault_name                   = "qa-key-vault"
    nicname                          = "qa NIC"
    subnet                           = "qa subnet"
    storage_account_name             = "storage91987"
    storage_account_tier             = "Standard"
    storage_account_replication_type = "GRS"
}

module "module_preprod" {
    source = "./modules"
    resource_group_name              = "preprod-resource-group"
    location                         = "North Europe"
    vm_name                          = "preprod-vm"
    vm_size                          = "Standard_DS2_v2"
    key_vault_name                   = "preprod-key-vault"
    nicname                          = "preprod NIC"
    subnet                           = "preprod subnet"
    storage_account_name             = "storage92987"
    storage_account_tier             = "Standard"
    storage_account_replication_type = "GRS"

}

module "module_prod" {
    source = "./modules"
    resource_group_name          = "prod-resource-group"
    location                         = "Central US"
    vm_name                          = "prod-vm"
    vm_size                          = "Standard_DS3_v2"
    key_vault_name                   = "prod-key-vault"
    nicname                          = "prod NIC"
    subnet                           = "Prod subnet"
    storage_account_name             = "storage93987"
    storage_account_tier             = "Premium"
    storage_account_replication_type = "ZRS"

}
