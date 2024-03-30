# Terraform Basics

## Terraform
Terraform is an open-source Infrastructure as Code (IaC) tool that allows you to build, change, and version infrastructure efficiently. It uses configuration files to describe the components needed to run an application or your entire datacenter.

## Core Concepts
- **Variables**: Key-value pairs used to customize Terraform modules.
- **Provider**: Plugins that interact with APIs of service providers.
- **Module**: A container for multiple resources that are used together.
- **State**: A file that represents the current state of the managed infrastructure.
- **Resource**: A block that defines a piece of infrastructure, like a virtual network or an instance.
- **Data Source**: Allows data to be fetched or computed for use elsewhere in Terraform configuration.
- **Output Values**: Return values of a Terraform module, which can be used by other configurations.
- **Plan**: A stage that shows what Terraform will do before it does it.
- **Apply**: A stage where Terraform makes the planned changes to reach the desired state.

## Basic Commands
- `terraform init`: Initializes a Terraform working directory.
- `terraform plan`: Creates an execution plan.
- `terraform apply`: Applies the desired changes.
- `terraform destroy`: Destroys the Terraform-managed infrastructure.
- `terraform fmt`: Rewrites config files to canonical format.
- `terraform validate`: Validates the configuration for errors.
- `terraform output`: Shows output values.
- `terraform refresh`: Updates the state file with real-world infrastructure.

## Terraform Lifecycle
1. **Init**: Prepare your working directory for other commands.
2. **Plan**: Show what Terraform will do before making any changes.
3. **Apply**: Make the planned changes.
4. **Destroy**: Remove all resources managed by Terraform.

## Getting Started
To start using Terraform, you need to install it and set up your configuration files with the necessary code. Here's a simple example to define an AWS EC2 instance

```hcl
provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}
