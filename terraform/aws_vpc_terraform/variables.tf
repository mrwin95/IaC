variable "vpc_cidr" {
  description = "CRID for the VPC"
  default     = "10.0.0.0/16"
}

variable "aws_region" {
  description = "Region for VPC"
  default     = "ca-central-1"
}

variable "public_subnet_cidr" {
  default     = "10.0.1.0/24"
  description = "CIDR for public subnet"
}


