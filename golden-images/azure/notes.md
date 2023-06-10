

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
