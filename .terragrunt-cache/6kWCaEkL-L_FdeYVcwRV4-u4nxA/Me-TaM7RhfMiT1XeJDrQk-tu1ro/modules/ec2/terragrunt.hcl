terraform {
  source = "../ec2"
}

dependency "vpc" {
  config_path = "../vpc"
}

inputs = {
  key_name           = "bastion-key"
  subnet_id          = dependency.vpc.outputs.public_subnet_id
  security_group_ids = [dependency.vpc.outputs.security_group_id]
}
