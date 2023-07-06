variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = ""
}

variable "instance_ami" {
    type        = string
    default     = "ami-06b09bfacae1453cb"
    description = ""
}

variable "instance_type" {
    type        = string
    default     = "t2.micro"
    description = ""
}

variable "instance_tags"{
    type        = map(string)
    default     = {
        Name = "terraform-ec2"
        project = "Terraform"
    }
    description = ""
}