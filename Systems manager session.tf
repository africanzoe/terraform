resource "aws_iam_role" "default" {
  tags = merge(var.tags, {})
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })
}

resource "aws_ssm_activation" "ssm_activation" {
  tags     = merge(var.tags, {})
  iam_role = aws_iam_role.default.arn
}

resource "aws_ssm_document" "ssm_document" {
  tags          = merge(var.tags, {})
  name          = "pCluster_session_manager"
  document_type = "Command"
  content       = <<DOC
  {
    "schemaVersion": "1.2",
    "description": "Check ip configuration of a Linux instance.",
    "parameters": {

    },
    "runtimeConfig": {
      "aws:runShellScript": {
        "properties": [
          {
            "id": "0.aws:runShellScript",
            "runCommand": ["ifconfig"]
          }
        ]
      }
    }
  }
DOC
}

