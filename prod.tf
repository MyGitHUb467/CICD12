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
    storage_account_name             = "storage91987"
    storage_account_tier             = "Standard"
    storage_account_replication_type = "GRS"

}
