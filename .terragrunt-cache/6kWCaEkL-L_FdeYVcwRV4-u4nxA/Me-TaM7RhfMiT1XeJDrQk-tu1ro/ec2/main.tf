# EC2 Instance
resource "aws_instance" "bastian_server" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id

  vpc_security_group_ids = var.security_group_ids

  tags = {
    Name    = "bastian_server"
    Project = "terraform_practice"
  }

  user_data = <<-EOF
              #!/bin/bash
              sudo apt update -y
              sudo apt install apache2 -y
              sudo systemctl start apache2
              EOF
}

# Elastic IP
resource "aws_eip" "ec2_eip" {
  instance = aws_instance.bastian_server.id

  tags = {
    Name    = "bastian_server_eip"
    Project = "terraform_practice"
  }
}