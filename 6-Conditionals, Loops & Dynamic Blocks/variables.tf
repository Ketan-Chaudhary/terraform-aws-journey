variable "aws_region" {
  default = "ap-south-1"
}

variable "sg_name" {
  default = "web-security-group-terraform"
}

variable "ingress_rules" {
  description = "List of ingress rules for security group"
  type = map(object({
    description = string
    from_port = number
    to_port = number
    protocol = string
    cidr_blocks = list(string)
  }))

  default = {
    "ssh" = {
      description = "Allow SSH"
      from_port = 22
      to_port = 22 
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    http  = {
        description = "Allow HTTP"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    },
    https = {
        description = "Allow HTTPS"
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
  }
}

