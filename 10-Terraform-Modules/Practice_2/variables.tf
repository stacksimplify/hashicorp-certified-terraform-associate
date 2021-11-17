variable "bucket_name" {
    description = "Name of the bucket"
}

variable "bucket_tags" {
    description = "bucket tags"
    type = map(string)
    default ={}
  
}

variable "aws_region" {
  description = "AWS Region"
  default = "eu-west-1"
}