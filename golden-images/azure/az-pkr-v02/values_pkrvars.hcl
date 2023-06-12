subscription_id = "####-######-####-###-########"
tenant_id       = "####-######-####-###-########"
client_id       = "####-######-####-###-########"
client_secret   = "###############"


# Ubuntu 

primary_location    = "East US"
image_name          = "e2esa-pkr-demo"
image_version       = "20230609-01"
resource_group_name = "packer-demo"
storage_account     = "e2esapackerimages"

image_sku           = "16.04-LTS"
capture_name_prefix = "packer"
location            = "East US"

# Windows 11

source_image_publisher="MicrosoftWindowsDesktop"
source_image_offer="Windows-11"
source_image_sku="win11-21h2-avd"
source_image_version="latest"

build_resource_group ="packer-demo"
artifacts_resource_group ="packer-demo"


