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
    "sudo apt install default-jre -y",
    "sudo java -version",
    "sudo wget -O /usr/share/keyrings/jenkins-keyring.asc   https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key",
    "echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]   https://pkg.jenkins.io/debian-stable binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null",
    "sudo apt-get update",
    "sudo apt-get install jenkins -y",
    "sudo systemctl status jenkins",
    "sudo systemctl enable jenkins",
    "echo enabled jenkins server",
    "sudo systemctl start jenkins",
    "echo jenkins server is started",
    "sudo systemctl status jenkins"
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
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCtDIHxGuQC7KsV2ZszhwbJhZZQCEnkl5V7mbuuWRka1RGzcB8SFhWxD1p7s6A+ah5dKPOFo4QW2Jf9J7OkmSIeKomUbhY8eIbCL2SLFxMDqb30vKp8dOmT6nOSSQYoBlGVm9Vvc56IjnYUMsnZOLP849CjXNSqh359S2mOokJ5lf8dW2uHQW78y4B41EGTjr7duCtsmT1ncETXNk//Txu6rTtk5k1S20NoB60ZRiA9uQLOMBQwaBHOTzl3jcGd9zBx6moCjVDvV9Qvwm5nlyKN5cHRYU45dWwAeFDve2CaceINFCLIyMcbHrGwuPuok2CBrLsKJTvvpKghPD28EoAspAM5YJXEAK/Ju+W/3GURo3Fq39OTIH5e9BroUv1YN6rp3ni4tE56ffm3ZCFQmiWs89XLvErxVbTbNXLX4jFCiRXH8xKbv7vQSbI2Izz75Cvfgx9/23OxMMwQZv+Sl5mBSlAFHmiWmo2zAo9EqhPWRIfLX+NqdMv9fuhVTqLdjOU= root@ip-172-31-92-206"
}
