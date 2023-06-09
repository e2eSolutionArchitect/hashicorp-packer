
## Error: Failure responding to request: StatusCode=403 -- Original Error: autorest/azure: Service returned an error. Status=403 Code="AuthorizationFailed" Message="The client '####-####-#####-#####' with object id '####-####-#####-#####' does not have authorization to perform action 'Microsoft.Storage/storageAccounts/listKeys/action' over scope '/subscriptions/####-####-#####-#####/resourceGroups/<resource-group-name>/providers/Microsoft.Storage/storageAccounts/<storage account name>' or the scope is invalid. If access was recently granted, please refresh your credentials."
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

  
