output "platform_role_arn" {
  value = aws_iam_role.platform_role.arn
  description = "The IAM Role ARN for the Compute Software Platform Role."
}

output "platform_role_name" {
  value = aws_iam_role.platform_role.name
  description = "The IAM Role name for the Compute Software Platform Role."
}

output "platform_role_external_id" {
  value = var.platform_role_external_id
  description = "The External ID provided to you from Compute Software."
}

output "discovery_role_arn" {
  value = aws_iam_role.discovery_role.arn
  description = "The IAM Role ARN for the Discovery Role."
}

output "discovery_role_name" {
  value = aws_iam_role.discovery_role.name
  description = "The IAM Role name for the Discovery Role."
}