# main.tf

provider "aws" {
  region = "us-east-1"  # Substitua pela região desejada
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"  # Substitua pelo bloco CIDR desejado

  tags = {
    Name = "my-vpc"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.0.0/24"  # Substitua pelo bloco CIDR desejado

  tags = {
    Name = "my-subnet"
  }
}

resource "aws_instance" "my_instance" {
  ami           = "ami-003d3d03cfe1b0468"  # AMI do Ubuntu 22.04
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.my_subnet.id

  tags = {
    Name = "my-instance"
  }

  associate_public_ip_address = true
}
