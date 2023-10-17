# Project I Centos server with git, docker installation
resource "aws_instance" "project-test" {
  ami           = "ami-0763cf792771fe1bd"
  instance_type = "t2.micro"
  #key_name      = "prashanthkey"

  tags = {
    Name = "Project-test"
  }
#provisioner "remote-exec" {
  #inline = [
    #"sudo yum update -y",
    #"touch file3",
    #"sudo yum install git -y",
    #"echo 'Git Installation Is Successful'",
    #"sudo git --version",
    #"sudo yum install -y yum-utils",
    #"sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo",
    #"sudo yum install docker-ce docker-ce-cli containerd.io -y",
    #"sudo systemctl start docker",
    #"sudo systemctl enable docker",
    #"echo 'Docker Installation Is Successful'",
    #"sudo docker --version",
    #"touch file4"
    #]
}
#connection {
  #host = self.public_ip
  #user = "centos"
  #type = "ssh"
  #private_key = file("/home/ubuntu/prashanthkey")
#}
#}
#resource "aws_key_pair" "prashanthkey" {
  #key_name   = "prashanthkey"
  #public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCwXOqJ4lDnyR4FoIfXE2cgk7GzZvG3ODXENhIyUFFvmp8c6TZYtzSM0VbWTe+eQ3VYyeUUpYheu/IjRt5zCGeyVj1Wfo6ihE6JGv5+JcaI0hTwL+7PxKH1EKMywGJlv8oUNxrom51Sdp6z+ZNQ68gqoWXaTKGM1nwV/isyCotoa6+SD4Ov21dLG6zHe00spQiwqFSdoOe85+MxUrbgJVdfMhGMoq8e7psoLHgi594dSwDqGFexHmzH3v3E+bEXTXH/snUNTQwuVfO87LQeDcCVBoGVQkhk73D7GzsCPHYKWcQ+QkIDOUyiFFG1VtuI9nnzmWyPN7m4tRQRfC7gdNkD root@ip-172-31-15-151"
#}
