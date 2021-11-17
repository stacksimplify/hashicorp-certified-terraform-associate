output "EC2-Instance-Public-IP" {
  description = "EC2 Instacne Public IP"
  value       = aws_instance.my-ec2-vm.public_ip
}

output "EC2-Intance-Private-IP" {
  description = "EC2 Instance Private IP"
  value       = aws_instance.my-ec2-vm.private_ip
}

output "EC2-Instance-Security-Groups" {
  description = "EC2 Instance Security Groups"
  value       = aws_instance.my-ec2-vm.security_groups
}

output "EC2-Public-DNS" {
  description = "Public DNS URL of EC2 Instance"
  value       = "https://${aws_instance.my-ec2-vm.public_dns}"

}