module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"


  name = "instance-1"
  ami                    = data.aws_ami.amzlinux.id 
  instance_type          = "t2.micro"
  key_name               = "AWS-S3-Mayur-Key2"
  monitoring             = true
  vpc_security_group_ids = ["sg-c3652599"]
  subnet_id              = "subnet-cb7f3591"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }

  user_data = file("apache-install.sh")

}