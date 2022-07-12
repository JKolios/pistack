variable "aws_access_key" {
  type        = string
  default     = "us-east-1"
  description = "AWS Access key"
}

variable "aws_secret_key" {
  type        = string
  default     = "us-east-1"
  description = "AWS Secret key"
}

variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS Region to deploy resources in"
}

variable "domain_name" {
  type        = string
  description = "Your domain"
}

variable "common_tags" {
  default = {
    For = "pistack"
  }
  description = "Tag all AWS Resources"
}

variable "pistack_ip" {
  type        = string
  default     = ""
  description = "The IP of the Raspberry Pi"
}