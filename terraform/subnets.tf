resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true

  tags = {
    Name        = "secure-cloud-public-subnet"
    Environment = "Q3-Lab"
    ManagedBy   = "Terraform"
  }
}

resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ap-south-1a"

  tags = {
    Name        = "secure-cloud-private-subnet"
    Environment = "Q3-Lab"
    ManagedBy   = "Terraform"
  }
}






resource "aws_subnet" "public_b" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.3.0/24"
  availability_zone       = "ap-south-1b"
  map_public_ip_on_launch = true

  tags = {
    Name        = "secure-cloud-public-subnet-b"
    Environment = "Q3-Lab"
    ManagedBy   = "Terraform"
  }
}

resource "aws_subnet" "private_b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "ap-south-1b"

  tags = {
    Name        = "secure-cloud-private-subnet-b"
    Environment = "Q3-Lab"
    ManagedBy   = "Terraform"
  }
}
