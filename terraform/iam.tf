data "aws_iam_policy_document" "ec2_assume_role" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "app" {
  name               = "secure-cloud-app-role"
  assume_role_policy = data.aws_iam_policy_document.ec2_assume_role.json

  tags = {
    Name        = "secure-cloud-app-role"
    Environment = "Q3-Lab"
    ManagedBy   = "Terraform"
  }
}







resource "aws_iam_instance_profile" "app" {
  name = "secure-cloud-app-profile"
  role = aws_iam_role.app.name

  tags = {
    Name        = "secure-cloud-app-profile"
    Environment = "Q3-Lab"
    ManagedBy   = "Terraform"
  }
}



resource "aws_iam_role_policy_attachment" "cloudwatch_agent" {
  role       = aws_iam_role.app.name
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
}
