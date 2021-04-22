data "aws_ami" "slux_less7" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] 
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.slux_less7.id
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}