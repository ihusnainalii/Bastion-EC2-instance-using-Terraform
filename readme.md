# EC2 Bastion Server with VPC Configuration using Terraform
This repository contains a Terraform script to provision an EC2 bastion server along with VPC configuration on AWS.

## Prerequisites
To run this Terraform script, you'll need the following:

- [Terraform](https://developer.hashicorp.com/terraform/install) installed (version 0.12+)
- AWS account and [AWS CLI](https://aws.amazon.com/cli/) configured
- An IAM user with `AdministratorAccess` permissions
- An AWS key pair for EC2 access

## Resources Created

This Terraform script will create the following resources:

- A VPC with specified CIDR block
- Public and private subnets
- An internet gateway attached to the public subnet
- A NAT gateway for private subnet routing
- Security groups to allow SSH access to the bastion server
- An EC2 instance configured as a bastion server
- Route tables for the public and private subnets

## How to Use

1. **Clone the repository**:

   ```bash
   git clone https://github.com/ihusnainalii/Bastion-EC2-instance-using-Terraform.git
   cd Bastion-EC2-instance-using-Terraform
   ```

2. **Update variables**:\
  Open the `variables.tf` files and update the default values if needed.
  To identify all the available variables for each resources, visit each modules `variable.tf` files.

3. **Initialize Terraform**:\
  Run the following command to initialize Terraform, which downloads the required providers:

    ```bash
    terraform init
    ```

4. **Plan the infrastructure**:\
  You can preview the resources that will be created using the `terraform plan` command:

    ```bash
    terraform plan
    ```

5. **Apply the configuration**:\
  Apply the Terraform script to create the resources on AWS:

    ```bash
    terraform apply
    ```

6. **Access the Bastion Server**:\
  Once the EC2 bastion server is created, you can SSH into it using the public IP address and your key pair:

    ```bash
    chmod 400 /path/to/your-key.pem
    ssh -i /path/to/your-key.pem ec2-user@<public-ip-address>
    ```

## Cleaning Up

To destroy the infrastructure when you no longer need it, run the following command:

  ```bash
  terraform destroy
  ```
