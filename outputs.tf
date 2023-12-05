output "instance_id" {
  value = module.ec2_instance.id
}


output "public_dns" {
  value = module.ec2_instance.public_dns
}