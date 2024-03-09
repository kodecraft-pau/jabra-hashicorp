```
# Install Terraform
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common

wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null

gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt update
sudo apt-get install terraform

# Initialize directory
# NOTE: Everytime you move to a different directory, you need to initialize that directory
terraform init

# Execute a dry-run
terraform plan

# You can also add `-auto-approve` option (not advisable)
terraform apply

# You can also add `-auto-approve` option (not advisable)
terraform destroy

# Show the state of the terraform aplied in AWS
terraform show

# Show a list of all the resources that terraform is currently managing
terraform state list

# Showcase which providers are required by our configuration
terraform providers

# Replace an specific resource
terraform apply -replace="aws_instance.web_server"

# Terraform Plan/Apply using variables file
terraform plan --var-file="dev.tfvars"
terraform apply --var-file="dev.tfvars"

```

### AWS Setup Environment Variables
```
$ export AWS_ACCESS_KEY_ID="accesskey"
$ export AWS_SECRET_ACCESS_KEY="secretkey"
$ export AWS_DEFAULT_REGION="us-west-2"
```