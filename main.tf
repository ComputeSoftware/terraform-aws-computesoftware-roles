data "aws_iam_policy_document" "policy" {
  statement {
    effect = "Allow"
    actions = [
      "aws-portal:View*",
      "cur:Describe*",
      "ce:List*",
      "ce:Describe*"
    ]
    resources = ["*"]
  }
}

resource "aws_iam_policy" "compute_software_policy" {
  name_prefix = "compute-software-policy-"
  policy = data.aws_iam_policy_document.policy.json
}

data "aws_iam_policy_document" "discovery_assume_role_policy" {
  statement {
    effect = "Allow"
    actions = [
      "sts:AssumeRole"
    ]
    principals {
      identifiers = [
        var.trusted_role_arn
      ]
      type = "AWS"
    }
  }
}

resource "aws_iam_role" "discovery_role" {
  name = var.discovery_role_name
  description = "Provides Compute Software read only access to discover opportunities to optimize."
  assume_role_policy = data.aws_iam_policy_document.discovery_assume_role_policy.json
}

data "aws_iam_policy_document" "platform_assume_role_policy" {
  statement {
    effect = "Allow"
    actions = [
      "sts:AssumeRole"]
    principals {
      identifiers = [
        var.trusted_role_arn
      ]
      type = "AWS"
    }
    condition {
      test = "StringEquals"
      values = [
        var.platform_role_external_id]
      variable = "sts:ExternalId"
    }
  }
}

resource "aws_iam_role" "platform_role" {
  name = var.platform_role_name
  description = "Enables the Compute Software platform integration."
  assume_role_policy = data.aws_iam_policy_document.platform_assume_role_policy.json
}

resource "aws_iam_role_policy_attachment" "discovery_read_only_attachment" {
  policy_arn = var.read_only_policy_arn
  role = aws_iam_role.discovery_role.name
}

resource "aws_iam_role_policy_attachment" "discovery_policy_attachment" {
  policy_arn = aws_iam_policy.compute_software_policy.arn
  role = aws_iam_role.discovery_role.name
}

resource "aws_iam_role_policy_attachment" "platform_read_only_attachment" {
  policy_arn = var.read_only_policy_arn
  role = aws_iam_role.platform_role.name
}

resource "aws_iam_role_policy_attachment" "platform_policy_attachment" {
  policy_arn = aws_iam_policy.compute_software_policy.arn
  role = aws_iam_role.platform_role.name
}