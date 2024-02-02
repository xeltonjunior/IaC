terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.35.0"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-008fe2fc65df48dac"
  instance_type = "t2.micro"
  key_name = "iac-devops"
# user_data = <<-EOF
# #!/bin/bash
# cd /home/ubuntu
# echo "<h1>Feito com Terraform</h1>" > index.html
# nohup busybox httpd -f -p 8080 &
# EOF
  tags = {
    Name = "Teste aws"
  }
}
