variable "aws_region" {
  description = "AWS Region"
  default     = "eu-west-1"
  type        = string
}

variable "ec2-ami_id" {
  description = "EC2-Ami-ID"
  default     = "ami-0d1bf5b68307103c2"
  type        = string
}

variable "ec2-instance-count" {
  default     = 1
  type        = number
  description = "ec2-instance-count"
}

variable "ec2-instance-type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t2.micro"
}