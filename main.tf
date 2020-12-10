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
