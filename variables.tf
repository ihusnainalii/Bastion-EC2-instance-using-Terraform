variable "security_group_ingress_cidr_block" {
  description = "CIDR block for allowed SSH & HTTP access"
  type        = string
  default     = "0.0.0.0/0"
}

variable "key_name" {
  description = "Key pair name"
  type        = string
  default     = "bastion-key"
}