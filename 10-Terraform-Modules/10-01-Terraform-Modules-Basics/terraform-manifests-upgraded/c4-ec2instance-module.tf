# AWS EC2 Instance Module
module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 5.0"

  name                   = "my-modules-demo"

  ami                    = data.aws_ami.amzlinux.id 
  instance_type          = "t2.micro"
  key_name               = "terraform-key"
  monitoring             = true
  vpc_security_group_ids = ["sg-b8406afc"] # Get Default VPC Security Group ID and replace
  subnet_id              = "subnet-4ee95470" # Get one public subnet id from default vpc and replace
  user_data              = file("apache-install.sh") 

# Module Upgrade from v2.x to v5.x 
## In v2.x module, Meta-argument count is used
## In v5.x module, Meta-argument for_each is used
  #instance_count         = 2
  for_each = toset(["one", "two", "three"])

  tags = {
    Name        = "Modules-Demo-${each.key}"
    Terraform   = "true"
    Environment = "dev"
  }
}

