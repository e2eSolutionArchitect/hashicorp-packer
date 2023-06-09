## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>3.39.1 |
| <a name="requirement_hcp"></a> [hcp](#requirement\_hcp) | 0.61.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~>3.0 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | ~>4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.39.1 |
| <a name="provider_hcp"></a> [hcp](#provider\_hcp) | 0.61.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.5.1 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | 4.0.4 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_linux_virtual_machine.az_vm](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine) | resource |
| [azurerm_network_interface.az_nic](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |
| [azurerm_network_interface_security_group_association.sga](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface_security_group_association) | resource |
| [azurerm_network_security_group.az_nsg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) | resource |
| [azurerm_public_ip.az_public_ip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_storage_account.az_storage_account](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_subnet.subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_virtual_network.vnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |
| [random_id.random_id](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id) | resource |
| [random_pet.rg_name](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet) | resource |
| [tls_private_key.pkr_ssh](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |
| [hcp_packer_image.pkr-img](https://registry.terraform.io/providers/hashicorp/hcp/0.61.0/docs/data-sources/packer_image) | data source |
| [hcp_packer_iteration.itr](https://registry.terraform.io/providers/hashicorp/hcp/0.61.0/docs/data-sources/packer_iteration) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_appid"></a> [appid](#input\_appid) | Application unique identifier code or id | `string` | n/a | yes |
| <a name="input_appname"></a> [appname](#input\_appname) | Name of the application | `string` | `null` | no |
| <a name="input_az_nic_name"></a> [az\_nic\_name](#input\_az\_nic\_name) | n/a | `string` | n/a | yes |
| <a name="input_az_nsg_name"></a> [az\_nsg\_name](#input\_az\_nsg\_name) | n/a | `string` | n/a | yes |
| <a name="input_az_public_ip_name"></a> [az\_public\_ip\_name](#input\_az\_public\_ip\_name) | n/a | `string` | n/a | yes |
| <a name="input_az_region_parent_img"></a> [az\_region\_parent\_img](#input\_az\_region\_parent\_img) | n/a | `string` | n/a | yes |
| <a name="input_az_vm_name"></a> [az\_vm\_name](#input\_az\_vm\_name) | n/a | `string` | n/a | yes |
| <a name="input_business_unit"></a> [business\_unit](#input\_business\_unit) | Business unit | `string` | n/a | yes |
| <a name="input_channel"></a> [channel](#input\_channel) | n/a | `string` | `"latest"` | no |
| <a name="input_cloud_provider"></a> [cloud\_provider](#input\_cloud\_provider) | n/a | `string` | n/a | yes |
| <a name="input_cost_center"></a> [cost\_center](#input\_cost\_center) | Cost center for billing | `string` | n/a | yes |
| <a name="input_createdby"></a> [createdby](#input\_createdby) | The username who executed the TF project | `string` | n/a | yes |
| <a name="input_desc"></a> [desc](#input\_desc) | Short description of the application | `string` | `"Description unavailable"` | no |
| <a name="input_env"></a> [env](#input\_env) | Which environment the resource is deployed | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Cloud Resource region | `string` | n/a | yes |
| <a name="input_org_unit"></a> [org\_unit](#input\_org\_unit) | he organizational unit of the resource. such as IT, Marketing, Finance. Depends on how is your org hierarchy is defined | `string` | n/a | yes |
| <a name="input_pkr_bucket_name"></a> [pkr\_bucket\_name](#input\_pkr\_bucket\_name) | n/a | `string` | n/a | yes |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | Short identifier of the resource associated with the project | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | Project name | `string` | n/a | yes |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | n/a | `string` | n/a | yes |
| <a name="input_suffix"></a> [suffix](#input\_suffix) | Count of resource as number. Such as if there are two VMs then vm-myapp-01, vm-myapp-02 <prefix>-<resource-name>-<suffix> | `string` | `null` | no |
| <a name="input_tier"></a> [tier](#input\_tier) | Which tier the resource/application belongs Web/App/DB | `string` | n/a | yes |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | Linux VM | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_public_ip_address"></a> [public\_ip\_address](#output\_public\_ip\_address) | n/a |
| <a name="output_tls_private_key"></a> [tls\_private\_key](#output\_tls\_private\_key) | n/a |
