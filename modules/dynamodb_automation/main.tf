data "aws_iam_policy_document" "dynamodb_write_access_policy_doc" {
  count = var.enabled ? 1 : 0
  statement {
    effect = "Allow"
    actions = [
      "application-autoscaling:DeleteScalingPolicy",
      "application-autoscaling:PutScalingPolicy",
      "application-autoscaling:RegisterScalableTarget",
      "dynamodb:UpdateTable"
    ]
    resources = [
      "*"
    ]
  }
}

resource "aws_iam_policy" "dynamodb_write_access_policy" {
  count = var.enabled ? 1 : 0
  name_prefix = "compute-software-dynamodb-write-"
  policy = data.aws_iam_policy_document.dynamodb_write_access_policy_doc[0].json
}

resource "aws_iam_role_policy_attachment" "platform_dynamodb_write_access_attachment" {
  count = var.enabled ? 1 : 0
  policy_arn = aws_iam_policy.dynamodb_write_access_policy[0].arn
  role = var.role_name
}
