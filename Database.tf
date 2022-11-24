resource "aws_dynamodb_table" "dynamodb_table" {
  write_capacity = 30
  tags           = merge(var.tags, {})
  read_capacity  = 30
  name           = "pCluster"
  billing_mode   = "PROVISIONED"
}

