variable "discovery_role_name" {
  type = string
  default = "compute-software-discovery-role"
}

variable "platform_role_name" {
  type = string
  default = "compute-software-platform-role"
}

variable "platform_role_external_id" {
  type = string
}

variable "trusted_role_arn" {
  type = string
  default = "arn:aws:iam::734247230719:root"
}

variable "read_only_policy_arn" {
  type = string
  default = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}