terraform {
  required_version = "~> 0.11.14"
}

provider "aws" {
  region  = "${var.region}"
}

# ----- Bucket -----
resource "aws_s3_bucket" "bucket" {
  bucket = "${var.bucket}" # Current var is name
  acl    = "${var.acl}"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  versioning {
    enabled = "${var.versioning}"
  }

  cors_rule      = "${var.cors_rule}"
  tags           = "${var.tags}"
  lifecycle_rule = "${var.lifecycle_rules}"
}


