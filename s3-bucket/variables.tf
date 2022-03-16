variable "region" {}

variable "bucket" {
  description = "name for the bucket"
}

variable "acl" {
  description = "the access for the bucket"
  default     = "private"
}

variable "versioning" {
  description = "whether versioning is required"
  default     = true
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = "map"
}

variable "cors_rule" {
  description = "A rule of Cross-Origin Resource Sharing"
  default     = []
}

variable "lifecycle_rules" {
  description = "A configuration of object lifecycle management (http://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html)"
  default     = []
}
