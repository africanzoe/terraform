resource "aws_security_group" "security_group" {
  vpc_id = aws_vpc.vpc.id
  tags   = merge(var.tags, {})
  name   = "pCluster"

  egress {
    to_port   = -1
    protocol  = "tcp"
    from_port = -1
    cidr_blocks = [
      "0.0.0.0/0",
    ]
  }

  ingress {
    to_port     = 443
    protocol    = "tcp"
    from_port   = 443
    description = "HTTPS only"
    cidr_blocks = [
      "0.0.0.0/0",
    ]
  }
}

