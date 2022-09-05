
resource "random_uuid" "random_suffix" {}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "${var.bucket_name-random_uuid.random_suffix.result}"
  tags = var.tags
}
