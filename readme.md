###################################################################################
Terraform code integrated with CI\CD to handle multiple variable file's with single
module.
###################################################################################

In script we are using multiple TFVARS files, for different rules and different resourses.
each resource is binded with its own tfvar file with contains its own rule.
for example:- i have picked only two rule for each resources CI-server & App-server with rules 
SSH & HTTPS and named file according.


Here, the script is using parameters for execution and that is handled by jenkins for reference 
i've droped terraform.sh file.
