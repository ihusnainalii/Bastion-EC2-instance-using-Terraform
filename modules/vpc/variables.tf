variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_a_cidr" {
  description = "CIDR block for the subnet A"
  type        = string
  default     = "10.0.0.0/24"
}

variable "subnet_b_cidr" {
  description = "CIDR block for the subnet B"
  type        = string
  default     = "10.0.1.0/24"
}

variable "security_group_ingress_cidr_block" {
  description = "CIDR block for allowed SSH & HTTP access"
  type        = string
}
