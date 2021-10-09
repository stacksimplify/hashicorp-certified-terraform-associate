resource "aws_instance" "my-test-instance" {
  ami           = "ami-0d1bf5b68307103c2"
  instance_type = "t2.micro"
  count         = 5
  tags = {
    name = "ec2-Instance-${count.index}"
  }
}