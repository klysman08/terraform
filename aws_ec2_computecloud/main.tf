provider "aws" {
  region  = var.aws_region
}

resource "aws_dms_replication_subnet_group" "example" {
  replication_subnet_group_description = "Example replication subnet group"
  replication_subnet_group_id          = "example-dms-replication-subnet-group-tf"

  subnet_ids = [
    "subnet-12345678",
    "subnet-12345679",
  ]

  tags = {
    Name = "example"
  }
}

resource "aws_cloud9_environment_ec2" "example" {
  instance_type = "t2.micro"
  name          = "example-env"
  subnet_id     = "subnet-12345678"
}