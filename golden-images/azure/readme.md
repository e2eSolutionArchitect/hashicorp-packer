[Install Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)

```
# run to validate Azure CLI installation
az --version
```

## to upgrade cli 
```
az upgrade
```

Azure Provider: [Authenticating using the Azure CLI](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/azure_cli)

## Connect to Azure cloud from local CLI
- Open VSC terminal and browse to your packer project directory
- Run below login command. It will open a browser to login to your Azure Account. Just login and you are ready to run packer now. 
```
# Run below command in Azure CLI . It will open the login in browser and ask to login. Login with credentials. 
az login
```

***As output you will get below json***
```
PS C:\Users\myuser> az login
A web browser has been opened at https://login.microsoftonline.com/organizations/oauth2/v2.0/authorize. Please continue the login in the web browser. If no web browser is available or if the web browser fails to open, use device code flow with `az login --use-device-code`.
[
  {
    "cloudName": "AzureCloud",
    "homeTenantId": "######-####-####-####-###########",
    "id": "######-####-####-####-###########",
    "isDefault": true,
    "managedByTenants": [],
    "name": "Pay-As-You-Go",
    "state": "Enabled",
    "tenantId": "######-####-####-####-###########",
    "user": {
      "name": "<user-id>",
      "type": "user"
    }
  }
]
```

- Run packer build. Don't forget the '.' at the end. Here we arr providing the variable value file. Please check the referance project structure [click here](https://github.com/e2eSolutionArchitect/hashicorp-packer/tree/main/golden-images/azure/az-pkr-v01)
```
packer build -var-file="values.pkrvars.hcl" .
```
