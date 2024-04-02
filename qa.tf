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