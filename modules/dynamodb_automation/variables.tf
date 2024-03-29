variable "enabled" {
  type = bool
  default = false
}

variable "role_name" {
  type = string
  description = "IAM Role name to attach the DynamoDB automation policy to."
}
