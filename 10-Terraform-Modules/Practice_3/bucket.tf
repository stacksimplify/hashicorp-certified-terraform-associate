module "website_s3_bucket" {
  source      = "C:\\terraform-project\\TFCertAssocPrep\\10-Terraform-Modules\\Practice_3\\module\\aws-s3-static-webiste-bucket"
  bucket_name = var.bucket_name
  bucket_tags = var.bucket_tags
}