# Project I ubuntu server with git, docker installation
resource "aws_instance" "project-test" {
  ami           = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t2.micro"
  key_name      = "prashanthkey"

  tags = {
    Name = "Project-test"
  }
provisioner "remote-exec" {
  inline = [
    "sudo touch file1"

    ]
}
connection {
  host = self.public_ip
  user = "ubuntu"
  type = "ssh"
  private_key = file("/home/ubuntu/prashanthkey")
}
}
resource "aws_key_pair" "prashanthkey" {
  key_name   = "prashanthkey"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDFog/neHZuqzg1fjMpiDG1dnMzFJG/uk26FJADYdpiWXi92BC9igIeIE9CHsEyi6XoQ+EGhQR/Yv8P8giLcej6pvZUW1hyVgtrDDSTyzE8t136RiSouZdKNQa2lgkUyGOCDYuBXNc/SgGlaQNlRLVniifkZOOK2eOWvurASRN6nY9lORJTsn8+g1xgtFOs7WYGfAPZixP1dVrSrGN5vr9E8kKy+X0NNnfwev14ih8EBdW804wuVOIA6y/WDuZVkGp4IOlgzIuX7YsINLD9Y+8jICs9mXvIYHZ1Lyf1TfMdNXxtGMCpnnb+CRLJHl3ZmVoGtu0A2m1SG4//Katu5rYApXqL6bWmMZaCIHSQePBgAmpkDpSVi9TpF3P+i6OghsRXQ0Tqm7NfdYCMbLaxFCmb304SYUAob+mbK3eXj1bejW5QKTbZok5fO3+QDvKeGdfFviInfwk7BGQHSzDHm3IvPkQuJx0NdTLQYz+JprJQ1mza7n6FbLmx2vNEOdE17mk= root@ip-172-31-92-206"
}
