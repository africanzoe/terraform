resource "aws_vpc" "vpc" {
  tags       = merge(var.tags, {})
  cidr_block = var.vpc_cidr
}

resource "aws_autoscaling_group" "asg" {
  min_size             = var.min_capacity
  max_size             = var.max_capacity
  launch_configuration = aws_launch_configuration.pCluster_lc.name

  availability_zones = [
    "us-west-1a",
    "us-west-1b",
  ]
}

resource "aws_instance" "c5_c_c_1_c" {
  tags              = merge(var.tags, {})
  instance_type     = "c5.large"
  availability_zone = "us-west-1a"
  ami               = var.ami

  security_groups = [
    aws_security_group.security_group.id,
  ]
}

resource "aws_instance" "c5" {
  tags              = merge(var.tags, {})
  instance_type     = "c5.large"
  availability_zone = "us-west-1a"
  ami               = var.ami

  security_groups = [
    aws_security_group.security_group.id,
  ]
}

resource "aws_instance" "c5_c_c_c_c_1_c" {
  tags              = merge(var.tags, {})
  instance_type     = "c5.large"
  availability_zone = "us-west-1a"
  ami               = var.ami

  security_groups = [
    aws_security_group.security_group.id,
    aws_security_group.security_group.id,
  ]
}

resource "aws_instance" "c5_c_c" {
  tags              = merge(var.tags, {})
  instance_type     = "c5.large"
  availability_zone = "us-west-1a"
  ami               = var.ami

  security_groups = [
    aws_security_group.security_group.id,
    aws_security_group.security_group.id,
  ]
}

resource "aws_instance" "c5_c_c_2_c" {
  tags              = merge(var.tags, {})
  instance_type     = "c5.large"
  availability_zone = "us-west-1a"
  ami               = var.ami

  security_groups = [
    aws_security_group.security_group.id,
  ]
}

resource "aws_instance" "c5_c_c_c_c" {
  tags              = merge(var.tags, {})
  instance_type     = "c5.large"
  availability_zone = "us-west-1a"
  ami               = var.ami

  security_groups = [
    aws_security_group.security_group.id,
    aws_security_group.security_group.id,
  ]
}

resource "aws_launch_configuration" "pCluster_lc" {
  instance_type = "c5n.large"
  image_id      = var.Official_Debian_AMi

  security_groups = [
    aws_security_group.security_group.id,
  ]
}

