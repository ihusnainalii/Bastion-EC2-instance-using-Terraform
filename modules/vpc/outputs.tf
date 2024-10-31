output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.tf_vpc.id
}

output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = aws_subnet.subnet_a.id
}

output "security_group_id" {
  description = "ID of the SSH security group"
  value       = aws_security_group.web_ssh_access.id
}