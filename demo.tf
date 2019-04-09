provider "aws" {
  access_key = "${var.aws_access_key_id}"
  secret_key = "${var.aws_secret_access_key}"
  region     = "ap-south-1"
}

resource "aws_instance" "ubuntu18" {
count="${var.env == "ubuntu18" ? 1:0}"
  ami           = "${var.ami_id [0]}"
  instance_type = "t2.micro"

  tags {

    Name = "Ec2 instance1"

  }
}
resource "aws_instance" "ubuntu16" {
  count="${var.env == "ubuntu16" ? 1:0}"

  ami           = "${var.ami_id [1]}"
  instance_type = "t2.micro"

  tags {

    Name = "Ec2 instance2"

  }
}
