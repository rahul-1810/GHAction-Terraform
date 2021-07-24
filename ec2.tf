terraform {
    required_version = ">=0.12.24"
}


provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "os" {
  ami           = "ami-0ad704c126371a549"
  instance_type = "t2.micro"
  key_name = "newkey"
 tags = {
    Name = "OS-from-GH"	
  }
}

