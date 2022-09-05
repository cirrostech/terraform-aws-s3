
resource "random_string" "random_suffix" {
  special = false
  number  = true
  length  = 6
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "${var.bucket_name}-${random_string.random_suffix.result}"
  tags = var.tags
}
