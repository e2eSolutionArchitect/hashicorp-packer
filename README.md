# hashicorp-packer
hashicorp-packer

Hashicorp Cloud Platform (HCP) [click here](https://www.hashicorp.com/cloud)

Terraform Cloud [click here](https://app.terraform.io/session)

### Browse to the directory where the *.pkr.hcl exists
```
packer init .
```

### Format code in packer
```
packer fmt .
```

### Validate 
```
packer validate .
```

### Build 
```
packer build <filename>.pkr.hcl
```

Check your cloud portal under. It will create a VM in few mins. 
For AWS it will create an EC2 instance
Also check the AMI option. It will show a new AMI created. 


## Deleting AMI in AWS
#### To delete the AMI
- Deregister the AMI
- Delete the Snapshot (deregistering the AMI doesn't delete the snapshot automatically. It needs to be done separately)

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
