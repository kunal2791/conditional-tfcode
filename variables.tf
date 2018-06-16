variable "vpc_id" {
  description = "Id of VPC where security groups will live"
}
variable "https_port" {
  description = "from_port"
}
variable "ssh_port" {
  description = "to_port"
}
variable "https_cidr" {
  description = "cidr-block"
  type = "list"
}
variable "ssh_cidr" {
  description = "cidr-block"
  type = "list"
}
variable "Stack" {
  description = "Stack Name"
}
variable "Stack_ID" {
  description = "Stack ID"
}
variable "version" {
  description = "stack version"
}
variable "sg_name" {
  description = "security group name"
}
