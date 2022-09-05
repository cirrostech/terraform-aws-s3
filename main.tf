resource "random_id" "id" {
	  byte_length = 8
}


resource "aws_s3_bucket" "s3_bucket" {
  bucket = "fusion-${random_id.id.hex}"
  tags = var.tags
}
