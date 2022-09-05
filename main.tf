
resource "random_string" "random_suffix" {
  length  = 3
  special = false
  upper   = false
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "${var.bucket_name}-{random_string.random_suffix.result}"
  tags = var.tags
}
