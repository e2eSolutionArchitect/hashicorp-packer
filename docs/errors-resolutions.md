
## Error: 
Failure responding to request: StatusCode=403 -- Original Error: autorest/azure: Service returned an error. Status=403 Code="AuthorizationFailed" Message="The client '####-####-#####-#####' with object id '####-####-#####-#####' does not have authorization to perform action 'Microsoft.Storage/storageAccounts/listKeys/action' over scope '/subscriptions/####-####-#####-#####/resourceGroups/<resource-group-name>/providers/Microsoft.Storage/storageAccounts/<storage account name>' or the scope is invalid. If access was recently granted, please refresh your credentials."
  ```
Resolution: 
The error is not related to the user but to the application. It is related to the role assignment to the subscription for the application your have created for packer. 
You must have created a "Service Principal". 
Navigate as following instruction
- Go to Azure Active Directory > App registration
- Your App must show here. Match the client Id
- No go to sebscription > select the subscription you want for this application > Access Control (IAM)
- Click Add > 'Add Role Assignment'
- Give attention '...Microsoft.Storage/storageAccounts...' The issue is for 'storageAccounts'. That's why add 'Storage Account Contributor' role. click next 
- Click + member
- Type the application name and enter. (it will not automately show the app name. so you have to enter name and search)
- Select the app and save the role assignment. That's it. 
 ```
-----------
  ## Error:
  Status=404 Code="ResourceNotFound" Message="The Resource 'Microsoft.Storage/storageAccounts/<storage account name>' under resource group 'packer-demo' was not found. For more details please go to https://aka.ms/ARMResourceNotFoundFix"
  
  ```
  It says your storage account is not under the resource group you have mentioned. 
  ```
  ----------------
  
  ## Error:
  apt-get not supported for RHEL. 
  
  ## Resolution:  
  ```
  The apt-get command only works on Debian, Ubuntu, and its derivatives. If you are trying to install rpm-based operating systems such as Fedora, RHEL and CentOS, the command will not work. As a result, you will receive the error.

  Distributions such as Fedora, CentOS, and RHEL use Yum as their default package manager. Type in the following command to install them using Yum –
  ```
  ----------------
  
  ## Error:
  The Shared Gallery Image 'packer' to which to publish the managed image version to does not exist in the resource group 'packer-demo' or does not contain managed image 'az-packer-v01-20230615211536'
  
  ```
  First two components has to be created. Otherwise you will get error that gallery is not under respurce group 
- Image gallery  
- Image definition 
  
  ```

## Warning
In packer registry under packer bucket it shows the warning that "The latest iteration of this image is sourced from a parent iteration that is no longer published to the linked channel."
```
It means the parent/base image which you child image inherits , is not assigned to any release channel.
Solution is , create a channel under your image bucket . suppose 'base' channel. and assign your base image version with 'base' channel.

NOTE: your base image means the image which doesn't have a parent. if you consider an image as a base , support 'img1' but ultimately the image 'img1' was created from a parent image 'img0'. Then packer will find if 'img0' was assigned to any channel or not.

In summary, first ever base/parent image should be assigned to a channel. 
```
