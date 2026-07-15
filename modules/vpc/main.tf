resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr_block
  region=var.region
  lifecycle {
    prevent_destroy = false
  }
}