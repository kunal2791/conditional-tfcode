#This is main terraform file with uses all variables and modules to make script executable to create required resources.
# Configure the AWS Provider
provider "aws" {
  region     = "${var.region}"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}


#configure security group
module "security" {
  source = "./modules/security"

  vpc_id = "${var.vpc_id}"

  #List of  cidrs ranges for different projects
  https_cidr = "${var.https_cidr}"
  ssh_cidr = "${var.ssh_cidr}"
  ssh_port = "${var.ssh_port}"
  https_port  = "${var.https_port}"
  sg_name = "${var.sg_name}"
  #description_of_sg = "${var.description_of_sg}"
  Stack = "${var.Stack}"
  Stack_ID = "${var.Stack_ID}"
  version = "${var.version}"
}
