terraform {
  required_version = ">= 0.12.21"
}

provider "aws" {
  profile = var.profile
  region  = var.region
}

resource "aws_iam_role_policy" "test_policy" {
  name   = var.name
  role   = aws_iam_role.test_role.id
  policy = data.template_file.policy.rendered
}

resource "aws_iam_role" "test_role" {
  name                 = var.name
  assume_role_policy   = data.template_file.role.rendered
  max_session_duration = var.max_session_duration
}

data "template_file" "policy" {
  template = file(var.policy_file)
  vars     = var.policy_vars
}

data "template_file" "role" {
  template = file(var.role_file)
  vars     = var.role_vars
}
