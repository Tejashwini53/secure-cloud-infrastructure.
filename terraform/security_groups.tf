resource "aws_security_group" "alb" {
  name        = "secure-cloud-alb-sg"
  description = "Allow HTTP traffic to the load balancer"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "HTTP from the internet"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "secure-cloud-alb-sg"
    Environment = "Q3-Lab"
    ManagedBy   = "Terraform"
  }
}

resource "aws_security_group" "app" {
  name        = "secure-cloud-app-sg"
  description = "Allow application HTTP traffic from the ALB"
  vpc_id      = aws_vpc.main.id

  ingress {
    description     = "HTTP from the load balancer"
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = [aws_security_group.alb.id]
  }

  egress {
    description = "Allow outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "secure-cloud-app-sg"
    Environment = "Q3-Lab"
    ManagedBy   = "Terraform"
  }
}
