variable "kubernetes_version" {
  default     = 1.27
  description = "kubernetes version"
}

variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "default CIDR range of the VPC"
}

variable "private_subnets" {
  default = ["10.0.1.0/24","10.0.2.0/24"]
  description = "private subnet range"
}

variable "public_subnets" {
  default = ["10.0.3.0/24","10.0.4.0/24"]
  description = "public subnet range"
}

variable "aws_region" {
  default = "eu-north-1"
  description = "aws region"
}

variable "aws_availability_zones" {
  default = ["eu-north-1a","eu-north-1b"]
  description = "Availability zones in aws region."
}

variable "cluster_name" {
  default = "my_eks_cluster"
}