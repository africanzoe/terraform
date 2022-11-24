variable "vpc_cidr" {
  description = "The default value of the VPC Cidr"
  type        = string
  default     = "10.0.0.0/16"
}

variable "min_capacity" {
  description = "The default value of the min capacity"
  type        = number
  default     = 1
}

variable "ami" {
  description = "The default value of the AMI"
  type        = string
  default     = "123"
}

variable "max_capacity" {
  description = "The default value of the max capacity"
  type        = number
  default     = 5
}

variable "Official_Debian_AMi" {
  description = "The default value of the Official Debian AMI"
  type        = string
  default     = "test"
}

variable "tags" {
  description = "Default tags to apply to all resources."
  type        = map(any)
  default = {
    archUUID = "b9bbb8ec-a1ed-4dc2-8658-aebbae8ae1a6"
    env      = "Dev"
  }
}

