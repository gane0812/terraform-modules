# to display outputs of all other resource outputs in root / child modules
output "resourcegroupname" {
    value = module.resourcegroup.rgnameout
}

output "stgactname" {
    value = module.storageaccount.stgaccout
}