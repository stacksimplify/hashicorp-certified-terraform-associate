# Resource Block to Create VPC in us-west-1
resource "aws_vpc" "vpc-eu-west-2" {
  cidr_block = "10.1.0.0/16"
  provider = aws.aws-eu-west-2
  tags = {
    "Name" = "vpc-eu-west-2"
  }
}


/*
Additional Note: 
provider = <PROVIDER NAME>.<ALIAS>  # This is a Meta-Argument from Resources Section nothing but a Special Argument
*/