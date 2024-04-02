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
    storage_account_name             = "storage90987"
    storage_account_tier             = "Standard"
    storage_account_replication_type = "GRS"

}
