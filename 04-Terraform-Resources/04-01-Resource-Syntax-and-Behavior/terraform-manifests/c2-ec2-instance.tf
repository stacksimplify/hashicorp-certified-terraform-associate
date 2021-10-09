# Create EC2 Instance
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance

resource "aws_instance" "my_resource_1" {
  ami               = "ami-0d1bf5b68307103c2"
  instance_type     = "t2.micro"
  availability_zone = "eu-west-1a"

  tags = {
    Name = "HelloWorld"
    From = "Terraform Training"
  }

}