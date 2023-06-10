# Steps to run packer locally for Google Cloud Image

## Download & Install Google Cloud CLI [click here](https://cloud.google.com/sdk/docs/install)

## Running locally on your workstation. [refer here](https://developer.hashicorp.com/packer/plugins/builders/googlecompute)
If you run the googlecompute Packer builder locally on your workstation, you will need to install the Google Cloud SDK and authenticate using User Application Default Credentials. You don't need to specify an account file if you are using this method. 
Your user must have at least <b>Compute Instance Admin (v1) & Service Account User</b> roles to use Packer succesfully.

## Running on Google Cloud[refer here](https://developer.hashicorp.com/packer/plugins/builders/googlecompute)
If you run the googlecompute Packer builder on GCE or GKE, you can configure that instance or cluster to use a Google Service Account. This will allow Packer to authenticate to Google Cloud without having to bake in a separate credential/authentication file.
It is recommended that you create a custom service account for Packer and assign it Compute Instance Admin (v1) & Service Account User roles.
- Create/Select a Project
- Create a Service account under the project
- Create Key and (json/ppk) under Service Account

## Authenticate using User Application Default Credentials [click here](https://cloud.google.com/sdk/gcloud/reference/auth/application-default)

- Open VSC terminal and browse to your packer project directory
- Run below login command. It will open a browser to login to your Google Cloud Account. Just login and you are ready to run packer now. 
```
gcloud auth application-default login
```
- Run packer build. Don't forget the '.' at the end. Here we arr providing the variable value file. Please check the referance project structure [click here](https://github.com/e2eSolutionArchitect/hashicorp-packer/tree/main/golden-images/gcp/gcp-pkr-v01)
```
packer build -var-file="values.pkrvars.hcl" .
```
