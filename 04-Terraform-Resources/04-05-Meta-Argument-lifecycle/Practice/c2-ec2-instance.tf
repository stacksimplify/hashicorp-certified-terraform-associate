resource "aws_instance" "my-test-instance" {
  ami               = "ami-0d1bf5b68307103c2"
  instance_type     = var.ec2-instance-type
  key_name          = "AWSS3_Instance_MayurAWS1"
  availability_zone = "eu-west-1a"
  tags = {
    "Name" = "myec2vm"
  }

  lifecycle {
    #create_before_destroy = true
    #prevent_destroy = true
    ignore_changes = [tags
      
    ]
  }
}