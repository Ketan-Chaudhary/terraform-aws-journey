provider "aws" {
  region = var.aws_region
}

data "aws_ami" "latest_ubuntu"{
    most_recent = true
    owners = ["099720109477"]

    filter {
      name = "name"
      values = [ "ubuntu*-amd64-server-*" ]
    }
}

data "aws_vpc" "default" {
  default = true
}

data "aws_subnet" "default" {
  vpc_id = data.aws_vpc.default
  availability_zone = "ap-south-1a"
}

data "aws_security_group" "default" {
  name = "default"
  vpc_id = data.aws_vpc.default.id
}

module "web-server" {
    source = "./modules/ec2_instance"
    ami_id = data.aws_ami.latest_ubuntu.id
    instance_type = var.instance_type
    subnet_id = data.aws_subnet.default.ids[0]
    security_groups_ids = [data.aws_security_group.default.id]
    instance_name = "terraform-module-ec2"
}