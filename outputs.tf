output "platform_role_arn" {
  value = aws_iam_role.platform_role.arn
  description = "The IAM Role ARN for the Compute Software Platform Role."
}

output "discovery_role_arn" {
  value = aws_iam_role.discovery_role.arn
  description = "The IAM Role ARN for the Discovery Role."
}