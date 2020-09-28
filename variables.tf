variable "discovery_role_name" {
  type = string
  default = "compute-software-discovery-role"
  description = "Discovery IAM Role name."
}

variable "platform_role_name" {
  type = string
  default = "compute-software-platform-role"
  description = "Platform IAM Role name."
}

variable "platform_role_external_id" {
  type = string
  description = "The External ID provided to you from Compute Software."
}

variable "trusted_role_arn" {
  type = string
  default = "arn:aws:iam::734247230719:root"
  description = "ARN used for the IAM role sts:AssumeRole principal. Defaults to Compute Software's AWS account."
}

variable "read_only_policy_arn" {
  type = string
  default = "arn:aws:iam::aws:policy/ReadOnlyAccess"
  description = "ARN for an AWS IAM policy that gives Compute Software read only access."
}