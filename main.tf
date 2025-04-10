resource "aws_db_instance" "generic_db-cad0cf17" {
  provider = aws.us-east-1


  tags = {
    env      = "test"
    archUUID = "161fb507-6ac7-44a5-bc6b-e14340e93f71"
  }
}

resource "aws_ebs_snapshot" "aws_ebs_snapshot-429fe82c" {
  provider = aws.eu-central-1

}

resource "aws_instance" "m5a-a2168b32" {
  provider = aws.eu-central-1

  availability_zone = "eu-central-1b"
}

resource "aws_iam_group" "aws_iam_group-b53c8b10" {
  provider = aws.eu-central-1


  tags = {
    env      = "test"
    archUUID = "161fb507-6ac7-44a5-bc6b-e14340e93f71"
  }
}

resource "aws_db_instance" "db_on_ec2-2d659735" {
  provider = aws.eu-central-1

  availability_zone = "eu-central-1b"
}

resource "aws_instance" "m5a-3de139ab" {
  provider = aws.eu-central-1

  availability_zone = "eu-central-1a"
}

resource "aws_vpc" "aws_vpc-49215be0" {
  provider = aws.us-east-1

}

resource "aws_ebs_volume" "aws_ebs_volume-d283b595" {
  provider = aws.eu-central-1

  encrypted         = true
  availability_zone = "eu-central-1a"
  size              = "120"
  iops              = "90"
}

resource "aws_s3_bucket" "aws_s3_bucket-726a7d96" {
  provider = aws.eu-central-1

}

resource "aws_db_instance" "db_on_ec2-f475519a" {
  provider = aws.us-east-1

  availability_zone = "eu-central-1b"
}

resource "aws_vpc" "aws_vpc-13714393" {
  provider = aws.eu-central-1

}

resource "aws_db_instance" "db_on_ec2-8d185e71" {
  provider = aws.eu-central-1

  availability_zone = "eu-central-1a"
}

resource "aws_vpc" "sdfsdf_9cWjmVCAeWqHtUHw" {
  cidr_block         = "sdfsdf"
  enable_dns_support = false
}

resource "aws_instance" "sdfsdf_EKFL5W6qu8vQhtyt" {
  ami                    = data.aws_ami.sdfsdf_EKFL5W6qu8vQhtyt.id
  instance_type          = "a1.2xlarge"
  key_name               = "sdfsdf_EKFL5W6qu8vQhtyt"
  vpc_security_group_ids = [aws_security_group.sdfsdf_EKFL5W6qu8vQhtyt_0.id]

  ebs_block_device {
    device_name = "sdfsd"
    volume_type = "gp3"
    volume_size = 3332
  }

  metadata_options {
    http_endpoint = "enabled"
    http_tokens   = "required"
  }
}

resource "aws_key_pair" "sdfsdf_EKFL5W6qu8vQhtyt" {
  key_name   = "sdfsdf_EKFL5W6qu8vQhtyt"
  public_key = "sd"
}

resource "aws_security_group" "sdfsdf_EKFL5W6qu8vQhtyt_0" {
  name        = "Allow Ingress"
  description = "Allow ingress from specific CIDR"

  ingress {
    description = "sdfsdf"
    from_port   = 0
    to_port     = 23
    protocol    = "tcp"
    cidr_blocks = ["sfsdf"]
  }
}

resource "aws_kms_key" "gtfghh_Mu7g5TwfPFgJ4vQB" {
  description = "KMS Key for DB gtfghh"
}

resource "aws_db_instance" "gtfghh_Mu7g5TwfPFgJ4vQB" {
  allocated_storage             = "54"
  db_name                       = "gtfghh"
  engine                        = "oracle-se2-cdb"
  engine_version                = "ghfghfghgfh"
  instance_class                = "db.m4.16xlarge"
  manage_master_user_password   = true
  master_user_secret_kms_key_id = aws_kms_key.gtfghh_Mu7g5TwfPFgJ4vQB.key_id
  username                      = "fghfhfhfg"
}

data "aws_ami" "sdfsdf_EKFL5W6qu8vQhtyt" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
