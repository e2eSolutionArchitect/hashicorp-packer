

## Create a resource group 
```
az group create -n myResourceGroup -l eastus 
```

## Create a service principal 
```
az ad sp create-for-rbac --query "{ client_id: appId, client_secret: password, tenant_id: tenant }" 
```

## Obtain your Azure subscription ID
```
az account show --query "{ subscription_id: id }"
```

## Windows 11 images can be found using the PublisherName: MicrosoftWindowsDesktop and Offer: Windows-11.
```
Get-AzVmImageSku -Location 'West US' -PublisherName 'MicrosoftWindowsDesktop' -Offer 'Windows-11'

or 

az vm image list --publisher MicrosoftWindowsServer --all --output table
```

## Check here for find images commands [click here](https://learn.microsoft.com/en-us/azure/virtual-machines/linux/cli-ps-findimage)


## Get list of RHEL image details from Azure
```
az vm image list --publisher RedHat --all --output table
```

find Azure images [click here](https://learn.microsoft.com/en-us/azure/virtual-machines/windows/cli-ps-findimage)
