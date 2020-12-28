data "aws_iam_policy_document" "workspaces_write_access_policy_doc" {
  statement {
    effect = "Allow"
    actions = [
      "workspaces:ModifyWorkspaceProperties",
      "workspaces:StartWorkspaces",
      "workspaces:StopWorkspaces",
      "workspaces:TerminateWorkspaces"
    ]
    resources = [
      "*"
    ]
  }
}

resource "aws_iam_policy" "workspaces_write_access_policy" {
  name_prefix = "compute-software-workspaces-write-"
  policy = data.aws_iam_policy_document.workspaces_write_access_policy_doc.json
}

resource "aws_iam_role_policy_attachment" "platform_workspaces_write_access_attachment" {
  policy_arn = aws_iam_policy.workspaces_write_access_policy.arn
  role = var.role_name
}