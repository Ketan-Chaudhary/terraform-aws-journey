output "ec2_id" {
  value = module.web-server.instance_id
}

output "ec2_ip" {
  value = module.web-server.public_ip
}
