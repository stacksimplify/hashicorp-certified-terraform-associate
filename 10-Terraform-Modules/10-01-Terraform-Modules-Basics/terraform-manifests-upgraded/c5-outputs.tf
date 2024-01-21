# Output variable definitions

output "ec2_instance_public_ip" {
  description = "Public IP Addressess of EC2 Instances"
  #value = module.ec2_cluster.*.public_ip
  value = [for ec2_cluster in module.ec2_cluster: ec2_cluster.id ]   
}

output "ec2_instance_public_dns" {
  description = "Public DNS for EC2 Instances"
  #value = module.ec2_cluster.*.public_dns
  value = [for ec2_cluster in module.ec2_cluster: ec2_cluster.public_dns ] 
}

output "ec2_instance_private_ip" {
  description = "Private IP Addresses for EC2 Instances"
  #value = module.ec2_cluster.*.private_ip
  value = [for ec2_cluster in module.ec2_cluster: ec2_cluster.private_ip ] 
}
