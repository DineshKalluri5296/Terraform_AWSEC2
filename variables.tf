variable "ami_id" {
  default = "ami-01edba92f9036f76e"
}
variable "instance_name" {}
variable "instance_type" {}
variable "vpc_name" {
  default = "my_vpc"
}
variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
}
variable "region" {}
variable "subnet_cidr_block" {
  default = "10.0.0.0/24"
}
