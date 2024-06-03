variable "region" {
  default = "eu-west-1"
  type = string
  description = "AWS Region"
}

variable "s3_bucket_prefix" {
  default = "mitchxxx-s3-file"
  type = string
  description = "S3 Bucket Prefix"
}

variable "lambda_function_name" {
  description = "The name of the Lambda function for processing uploads"
  type        = string
  default     = "file_processing_function"
}

variable "lambda_runtime" {
  description = "The runtime for the Lamda function"
  type = string
  default = "python3.11"
}

variable "lambda_handler" {
  description = "The handler for the Lamda function"
  type = string
  default = "lamda_function.lamda_handler"
}

variable "lambda_source_file" {
  description = "Path to the Lambda function's source code zip file"
  type = string
  default = "./lambda_function_payload.zip"
}