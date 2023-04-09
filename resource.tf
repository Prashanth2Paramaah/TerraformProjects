resource "aws_instance" "project1" {
  ami           = "ami-0763cf792771fe1bd"
  instance_type = "t2.micro"
  key_name      = "prashanthkey"

  tags = {
    Name = "Project1"
  }
}
resource "aws_key_pair" "project1key" {
  key_name   = "prashanthkey"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDXnHSvSarRbkR33ni0rbo+JrAyyYm+O+XGACu/1X+gSJp03gKb7S8ACyKdJQ2k9dT46PLxjOKA0DZs9uAu1+0RduVYqoyftgRnNaBuQUDoImzpx6UBy8xoidXgz96uL8SqFfbFwp8nq0BeIgD+VcQ4xU7ZggZu6py+miKKHITFDjv9qU/FrbeZeNXbEzl+uabyIxY5SEDNxKhO0QXTuXnjySCSAP6fjQ83KP5krjj9vdqL/iJwQFyeaFUAjS1zthrcKYC8Zg5k9RIyvRm9EnSz+3r73aLcM1lSy9TDPvaCp0kZ+iqvC7/OImfoJGLsAkPPKzndZM5gzTF9jurCsPc/ root@ip-172-31-45-126.ap-south-1.compute.internal"
}
