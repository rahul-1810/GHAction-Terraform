provider "aws" {
    region = "ap-south-1"
    access_key = "AKIAY6VC3YEJM3MZJK3O"
    secret_key = "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"
}

resource "aws_instance" "os" {
  ami           = "ami-0ad704c126371a549"
  instance_type = "t2.micro"
  key_name = "newkey"
 tags = {
    Name = "OS-from-GH"	
  }
}

