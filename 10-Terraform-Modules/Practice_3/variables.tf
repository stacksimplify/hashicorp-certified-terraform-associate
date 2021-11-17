variable "bucket_name" {
  description = "Name of the bucket"
  type        = string
  default     = "testbucketofmayur-3"
}

variable "bucket_tags" {
  description = "bucket tags"
  type        = map(string)
  default = {
    "Terraform" = "True"
    Environment = "Dev"
  }

}

variable "aws_region" {
  description = "AWS Region"
  default     = "eu-west-1"
}