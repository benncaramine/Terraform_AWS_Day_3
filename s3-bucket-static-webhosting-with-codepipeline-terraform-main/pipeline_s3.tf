resource "aws_s3_bucket" "pipeline_bucket" {
  bucket        = var.pipeline_bucket_name
  force_destroy = true
}
