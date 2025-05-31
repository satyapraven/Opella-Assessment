variable "ami_id" {
  description = "AMI ID for EC2"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  type        = string
}

variable "key_name" {
  description = "Key pair name for SSH access"
  type        = string
}

variable "public_subnet_id" {
  description = "Subnet ID where the instance will be launched"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}
