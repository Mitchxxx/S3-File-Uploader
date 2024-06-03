resource "aws_s3_bucket" "bucket_in" {
  bucket = "${var.s3_bucket_prefix}-in"
}

resource "aws_s3_bucket_cors_configuration" "bucket_in_cors" {
  bucket = aws_s3_bucket.bucket_in.id

  cors_rule {
    max_age_seconds = "3000"
    expose_headers = ["ETag"]
    allowed_headers = ["*"]
    allowed_methods = ["PUT", "POST"]
    allowed_origins = ["*"]
  }
}