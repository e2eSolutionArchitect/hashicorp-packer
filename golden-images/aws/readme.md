## Setup AWS CLI [click here](https://github.com/e2eSolutionArchitect/KEDB/blob/main/aws/install-aws-cli.md)

## Configure AWS credentials [click here](https://github.com/e2eSolutionArchitect/scripts/blob/main/aws/ec2/aws-configure.md)

## Install Packer

## Initiate, Validate & Build Packer
Do not miss the '.' at end of the command
```

# Initiate 
packer init .

# Validate
packer validate .

# Build
packer build .

```

# Specify packer file to builkd or validate. '.' not needed when you specify the file
```
packer validate mypacker.pkr.hcl

packer build mypacker.pkr.hcl
```
