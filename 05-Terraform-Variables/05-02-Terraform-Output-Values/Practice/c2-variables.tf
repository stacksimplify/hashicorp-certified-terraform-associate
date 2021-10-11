variable "aws_region" {
  description = "AWS Region"
  default     = "eu-west-1"
  type        = string
}

variable "ec2-ami_id" {
  description = "EC2-Ami-ID"
  default     = "ami-0d1bf5b68307103c2"
  type        = string
  validation {
    condition     = length(var.ec2-ami_id) > 4 && substr(var.ec2-ami_id, 0, 4) == "ami-"
    error_message = "The length should be greater than 4 and should start with ami-."
  }
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

variable "ec2-instance-type-list" {
  description = "EC2 Instance Type list"
  type        = list(any)
  default     = ["t2.micro", "t2.small", "t2.large"]
}

variable "ec2-instance-tags-map" {
  description = "EC2 Instance Tags"
  type        = map(string)
  default = {
    "Name" = "Ec2-Web"
    "Tier" = "Web Tier"
  }

}

variable "ec2-instance-type-map" {
  description = "EC2 Instance Type map"
  type        = map(string)
  default = {
    "small-apps"  = "t3.micro"
    "medium-apps" = "t3.small"
    "large-apps"  = "t3.large"
  }

}

/*
variable "db_username" {
  description = "AWS RDS Database admin username"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "AWS RDS Database admin password"
  type        = string
  sensitive   = true
}
*/