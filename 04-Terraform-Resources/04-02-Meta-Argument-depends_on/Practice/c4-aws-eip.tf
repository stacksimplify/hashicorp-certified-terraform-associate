resource "aws_eip" "my-test-elastic-ip" {
  instance = aws_instance.my-test-instance.id
  vpc      = true
  depends_on = [
    aws_internet_gateway.my-test-internet-gw
  ]
}