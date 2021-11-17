# Create EC2 Instance
resource "aws_instance" "my-ec2-vm" {
  ami                    = var.ec2-ami_id
  instance_type          = var.ec2-instance-type-map["small-apps"]
  key_name               = "AWSS3_Instance_MayurAWS1"
  count                  = var.ec2-instance-count
  user_data              = <<-EOF
    #!/bin/bash
    sudo yum update -y
    sudo yum install httpd -y
    sudo systemctl enable httpd
    sudo systemctl start httpd
    echo "<h1>Welcome to StackSimplify ! AWS Infra created using Terraform in us-east-1 Region</h1>" > /var/www/html/index.html
    EOF
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  tags                   = var.ec2-instance-tags-map
}
