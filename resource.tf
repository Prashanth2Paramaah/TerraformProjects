resource "aws_instance" "project1" {
  ami           = "ami-0763cf792771fe1bd"
  instance_type = "t2.micro"

  tags = {
    Name = "Project1"
  }
}
