module "vpc" {
  source         = "./modules/vpc"
  vpc_cidr_block = var.vpc_cidr_block
  region         = var.region

}


module "subnet" {
  source            = "./modules/subnets"
  subnet_cidr_block = var.subnet_cidr_block
  region            = var.region
  vpc_id            = module.vpc.vpc_id
  depends_on        = [module.vpc]
}





module "EC2" {
  source        = "./modules/ec2"
  instance_name = var.instance_name
  ami_id        = var.ami_id
  instance_type = var.instance_type
  subnet_id     = module.subnet.subnet_id
  depends_on    = [module.subnet]
}
