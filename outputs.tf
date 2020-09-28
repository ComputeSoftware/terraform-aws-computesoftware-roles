output "platform_role_arn" {
  value = aws_iam_role.platform_role.arn
}

output "discovery_role_arn" {
  value = aws_iam_role.discovery_role.arn
}