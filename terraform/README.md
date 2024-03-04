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

# You can also add `-auto-approve` option
terraform apply

# You can also add `-auto-approve` option
terraform destroy

# Show the state of the terraform aplied in AWS
terraform show

# Show a list of all the resources that terraform is currently managing
terraform state list






```