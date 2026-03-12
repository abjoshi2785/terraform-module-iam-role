mock_provider "aws" {}

variables {
  name = "demo-ec2-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })

  managed_policy_arns = [
    "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  ]

  tags = {
    Environment = "dev"
  }
}

run "plan_iam_role" {
  command = plan

  assert {
    condition     = aws_iam_role.this.name == "demo-ec2-role"
    error_message = "IAM role name was not set correctly."
  }

  assert {
    condition     = aws_iam_instance_profile.this.name == "demo-ec2-role-profile"
    error_message = "Instance profile name was not derived correctly."
  }

  assert {
    condition     = length(aws_iam_role_policy_attachment.this) == 1
    error_message = "Expected exactly one policy attachment."
  }

  assert {
    condition     = output.module_version == "1.0.0"
    error_message = "Module version output does not match expected version."
  }
}
