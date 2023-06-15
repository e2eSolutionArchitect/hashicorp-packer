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

## Configure your localpacker with HCP Packer 
Please [refer here](https://developer.hashicorp.com/packer/tutorials/hcp-get-started/hcp-push-image-metadata)
- Assuming you have a 'packer registry' created. Or simply create a 'free registry'
- In Access control (IAM) menu create a Service Principal. under that SP create key. it will generate Client ID and Secret ID. Copy these two ids. 
- Add these two variables (HCP_CLIENT_ID,HCP_CLIENT_SECRET) with the generated values in environment variables. e,g. For windows add these two under environment variables. 
- Run packer build to test the connection on the project [azure v03](https://github.com/e2eSolutionArchitect/hashicorp-packer/tree/main/golden-images/azure/az-pkr-v03)


## Release Notes

**v01** 
Project: [az-pkr-v01](https://github.com/e2eSolutionArchitect/hashicorp-packer/tree/main/golden-images/azure/az-pkr-v01)
Updates:
- Basic skeleton on packer to simply run a packer build for Ubuntu OS

-----------------
**v02** 
Project: [az-pkr-v01](https://github.com/e2eSolutionArchitect/hashicorp-packer/tree/main/golden-images/azure/az-pkr-v02)
Updates:
- Build multiple image in parallel. Ubuntu, Windows 11, RHEL8

-----------------
**v03** 
Project: [az-pkr-v01](https://github.com/e2eSolutionArchitect/hashicorp-packer/tree/main/golden-images/azure/az-pkr-v03)
Updates:
- Enable and Use HCP Packer registry for image build

-----------------
