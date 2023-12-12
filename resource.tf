# Project I ubuntu server with git, docker installation
resource "aws_instance" "project-test" {
  ami           = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t2.medium"
  key_name      = "prashanthkey"

  tags = {
    Name = "Project-test"
  }
provisioner "remote-exec" {
  inline = [
    "sudo touch file1",
    "sudo apt update",
    "sudo apt install fontconfig openjdk-17-jre -y",
    "java -version",
    "sudo wget -O /usr/share/keyrings/jenkins-keyring.asc   https://pkg.jenkins.io/debian/jenkins.io-2023.key",
    "echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]   https://pkg.jenkins.io/debian binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null",
    "sudo apt-get update",
    "sudo apt-get install jenkins -y",
	  "systemctl status jenkins"
    ]
}
connection {
  host = self.public_ip
  user = "ubuntu"
  type = "ssh"
  private_key = file("/tmp/prashanthkey")
}
}
resource "aws_key_pair" "prashanthkey" {
  key_name   = "prashanthkey"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDBrUds6KnxWqETSSKAq/Dt38vbYk7gDoO6KN2KJxnwXzmbijhrx3RgQ84S37SZs82yf3xYzd3e/e6xe3otLNlFi4TjvWjhpL0GWoKSqn585qmDkX2t4f00hzsCL2K02f6uYLpd9O9luy8BkuVPFsw2B9hDYezBcC9NWRbxkmExbLYm2xSyM3RaNntR/Je0grmVQrbUQ2nrUIsb1Cp/IJ52xGHt2WwmJ8ADHci9wsN8UKXBCftcqJn7jp/W9MoFNQ7LExgAEwMUDLigK7/+ZhtZfHw+pFldQJwH1I1CgRPCZzao6h+DLq4cguL55y+4oRaH9X7nvANEaJugswNqMd3l9Re/glBsH6mvwRKPrXtRLdr4CdahHeJcPojoS2HlP3mTrcjhnT1QTkIZSCWb08l3Iek1YCbLjleyEOdn7BzHvjBhuyYQYh/x4fjDtnjVAnv531Jtm4RpQB44NC8d0VoMhAYEIvZ10ildUGQ+ovck4DJ0QkpEzNpSlULDheLipEk= root@ip-172-31-92-206"
}
