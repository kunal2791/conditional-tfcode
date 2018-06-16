## terraform managed security groups , HTTPS and SSH
TERRAFORM=/usr/local/terraform/terraform
cd $WORKSPACE/terraform

sudo $TERRAFORM get 
#Running terraform plan
sudo $TERRAFORM plan -var-file ${security_group}/"${security_group}_https.tfvars" -var-file ${security_group}/"${security_group}_ssh.tfvars" --target=module.security -state=/data/${security_group}/"${security_group}.tfstate"            
#Applying  Plan
sudo $TERRAFORM apply -var-file ${security_group}/"${security_group}_https.tfvars" -var-file ${security_group}/"${security_group}_ssh.tfvars" --target=module.security -state=/data/${security_group}/"${security_group}.tfstate"            