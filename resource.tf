# Project I ubuntu server with git, docker installation
resource "aws_instance" "project-test" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  key_name      = "prashanthkey"

  tags = {
    Name = "Project-test"
  }
provisioner "remote-exec" {
  inline = [
    # Add Docker's official GPG key:
    "sudo apt-get update",
    "touch file1"

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
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDpmAfGa4AqbpE+E09PCK44mJr90bufNkxR4GszdULMz1ybIfjhWwgI+Oa/wjWETAVVSCyzQbJszbKBLqW8x/xRNnNTZ0SOWvczsgmfHgrkk2e1TOT+EEACbd12cJ5JVZxdr3UfMFXu/uKTGk07bi5oqE+dJOAM51095k9pDBekD818Fc5cddVt33RWTtt/KR9vsMJytKqmrgSTG5YnHSb0jMNxmtptCCX+AjYrEqyUX9xa4/uooAWCWYGPV0ncbjGNBkJdaHpX8zcvKOLHLCDwjSI5nGSyi8xdWITlWr0hvcUusBKGd6PAzmW7ATw7qqe35xdCUISQfxBaqout6OQ1Yob6Hfb7ebnzRvoXwa8LbFrNScWMYUG5pqWYsrqQirf47xuHPbhWI74LU503V9wT347D54FmyCUFK2H5dfoVhaXyYkSIjROFyiEEourOeO7wIVrafIzK5WsuxbC3UX6v4z/lFM1WdRSUPRwURd1452w9x7ocTnqvCy+OKizXPzU= root@ip-172-31-92-206"
}
