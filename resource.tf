resource "aws_instance" "project-test" {
  ami           = "ami-07d3a50bd29811cd1"
  instance_type = "t2.micro"
  key_name      = "prashanth-key1"

  tags = {
    Name = "Project-test"
  }
provisioner "remote-exec" {
  inline = [
    "touch file3",
    "sudo yum install git -y",
    ]
}
connection {
  host = self.public_ip
  user = "ec2-user"
  type = "ssh"
  private_key = file("/home/centos/prashanth-key1")
}
}
resource "aws_key_pair" "prashanth-key1" {
  key_name   = "prashanth-key1"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDFH2bIVgGuhOHOrDRCFORACgGaexiHY75HbEkR9p7y6EP8TOx53j9ztp6Gxq1/3MIC6D73dHpXTfLPOkMFV4BEtFTNa+C7KjY7x4tFUC0q8Ws2VOJkwLgua6QSVDHkjRdULqP+xj+T/gFIZek7zRS+Y91oAHHkuUpF2iTGD4axxnYRLeucb6H2B5C0NRqegVGS6t4W22MvMELKjdwG9DFF1+wYykMIMhDjpCBMaVsenbw735IbRMP/ZkxmplFXCW1OIZLTjIFTsDgUiYMV4CMTuS338T6Spg9M0Ai0PIsqsTTHRDC8wus41AdQFPROedU/Gw1LioRMUA+CGNMj1VKt root@ip-172-31-45-126.ap-south-1.compute.internal"
}
