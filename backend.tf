
terraform {
  backend "s3" {
    bucket = "security-topologies"
    key    = "b9bbb8ec-a1ed-4dc2-8658-aebbae8ae1a6"
    region = "eu-west-3"
  }
}
  