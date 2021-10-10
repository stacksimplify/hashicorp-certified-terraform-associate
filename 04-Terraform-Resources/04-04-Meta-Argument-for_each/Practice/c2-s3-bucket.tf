resource "aws_s3_bucket" "my-resource-bucket" {
  for_each = {
    dev  = "my-dapp-bucket"
    test = "my-tapp-bucket"
    prod = "my-papp-bucket"
  }



  bucket = "mayurhastak-${each.value}"
  acl    = "private"

  tags = {
    Name        = "mayurhastak-${each.value}"
    Environment = "${each.key}"
  }

}

resource "aws_iam_user" "iam-user" {
  for_each = toset(["TMayur", "TSnehal"])


  name = "user-${each.key}"
  tags = {
    tag-key = "user-${each.key}"
  }

  depends_on = [
    aws_s3_bucket.my-resource-bucket
  ]


}