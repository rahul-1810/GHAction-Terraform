provider "aws" {
    region = "ap-south-1"
    AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY }}
    AWS_SECRET_KEY_ID: ${{ secrets.AWS_SECRET_KEY }}
}

resource "aws_instance" "os" {
  ami           = "ami-0ad704c126371a549"
  instance_type = "t2.micro"
  key_name = "newkey"
 tags = {
    Name = "OS-from-GH"	
  }
}

