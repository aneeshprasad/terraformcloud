provider "aws" {
	region = "us-west-2"
}
module "my_vpc" {
  source = "../modules/vpc"
  vpc_cdir = "192.168.0.0/16"
  vpc_subnet = "192.168.1.0/24"
  vpc_id = "${module.my_vpc.vpc_id}"
}

module "my_ec2" {
    source = "../modules/ec2"
    ami_id = "ami-0142f6ace1c558c7d"
    subnet_id = "${module.my_vpc.subnet_id}"
  
}