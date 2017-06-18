provider "aws" {
  access_key = "AKIAJELYSTZFZCSVV4IA"
  secret_key = "+ewNOPTtcqAMTQRt7gpVI+fmkJyQfFdFDl0LaVAX"
  region     = "us-west-2a"
}

resource "aws_instance" "sample" {
  ami           = "ami-0d729a60"
  instance_type = "t2.micro"
  }
  
 output "ip" {
    value = "${aws_instance.sample.public_ip}"
}