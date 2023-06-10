
- Create a Project
- Create a Service account under the project
- Create Key and (json/ppk) under Service Account

## Running locally on your workstation. [refer here](https://developer.hashicorp.com/packer/plugins/builders/googlecompute)
If you run the googlecompute Packer builder locally on your workstation, you will need to install the Google Cloud SDK and authenticate using User Application Default Credentials. You don't need to specify an account file if you are using this method. Your user must have at least <b>Compute Instance Admin (v1) & Service Account User</b> roles to use Packer succesfully.
