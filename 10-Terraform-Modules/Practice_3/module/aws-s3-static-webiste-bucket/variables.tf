variable "bucket_name" {
    description = "Name of the bucket"
    type = string
}

variable "bucket_tags" {
    description = "bucket tags"
    type = map(string)
}

