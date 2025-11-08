variable "aws_region" {
  default = "us-east-1"
}

variable "aws_access_key" {
  description = "AWS access key"
}

variable "aws_secret_key" {
  description = "AWS secret key"
}

variable "bucket_name" {
  default = "jenkins-terraform-demo-bucket"
}
