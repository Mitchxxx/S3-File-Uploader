resource "aws_iam_role" "lamda_exec_role" {
  name = "${var.s3_bucket_prefix}-lamda-exec-role"
  assume_role_policy = jsonencode({
    Version = ""
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "Lamda.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      },
    ]
  })
}