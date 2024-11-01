terraform {
    source = "../vpc"
}

inputs = {
    instance_region                  = "us-east-1"
    security_group_ingress_cidr_block = "0.0.0.0/0"
}