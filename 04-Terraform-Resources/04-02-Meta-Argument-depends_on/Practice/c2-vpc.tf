resource "aws_vpc" "my-test-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "my-test-vpc"
  }
}

#Add subnet
resource "aws_subnet" "my-test-subnet" {
  vpc_id                  = aws_vpc.my-test-vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "eu-west-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "my-test-subnet"
  }
}

resource "aws_internet_gateway" "my-test-internet-gw" {
  vpc_id = aws_vpc.my-test-vpc.id

  tags = {
    Name = "my-test-internet-gw"
  }
}

resource "aws_route_table" "my-test-route-table" {
  vpc_id = aws_vpc.my-test-vpc.id

  tags = {
    Name = "my-test-route-table"
  }
}

resource "aws_route" "my-test-route" {
  route_table_id         = aws_route_table.my-test-route-table.id
  destination_cidr_block = "0.0.0.0/16"
  gateway_id             = aws_internet_gateway.my-test-internet-gw.id
}

resource "aws_route_table_association" "my-test-route-association" {
  subnet_id      = aws_subnet.my-test-subnet.id
  route_table_id = aws_route_table.my-test-route-table.id
}

resource "aws_security_group" "my-test-security-group" {
  name        = "dev-vpc-default-sg"
  description = "Dev VPC Default Security Group"
  vpc_id      = aws_vpc.my-test-vpc.id

  ingress {
    description = "Allow Port 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow Port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all IP and Ports Outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}