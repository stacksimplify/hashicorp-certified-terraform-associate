# Create EC2 Instance - Amazon Linux
resource "aws_instance" "my-ec2-vm" {
  ami           = data.aws_ami.amzlinux.id 
  instance_type = var.instance_type
  key_name      = "AWSS3_Instance_MayurAWS1"
  count = terraform.workspace == "default" ? 2 : 1    
	user_data = file("apache-install.sh")  
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  tags = {
    "Name" = terraform.workspace == "default" ? "vm-${count.index}" : "vm-${terraform.workspace}-${count.index}"
  }
}




