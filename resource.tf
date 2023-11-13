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
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDAdWf+OyMI5e+N/+NbEr5UsdmZmWKWTlfE7dC0TN/jVNec1QPZDTXOJVjRFpSEViEKvI6m1SXPelEO682MYCxg1OEWm+kgy9ragLtlWIIP8hCrPsokQ7kXUQClH9wrwfGp4kv4dvtF7ZJOfYojdKj91TU2881emDydsQTNHwNDxGQs+MOZXqAgsDGunevOlAksfeSf283IXoqYNuwj6kT5MFi3zuDGeWpVBhl7pdq9YkTrWE3xt2Er4ktPVtqGJOiR5OWMLO5ATVAXPFThTMBbGLRgRdL7xX5x3pw42HrlTrt4aQIVMlUIkVxJijyUnAsRGVKgV8Il529p+KcbmkZHauQfRjfteGoLSKZRNzu8FpCc0ioFqDtoTv+T+iDKggpM1438lUNSm9+Fc20VhZPo/0LB321GAsYJlrBhRKNDviO3APv7FeQcZUwdOLacFxgoaBq5tWpb4YS5Kqvd3oymuqzy0VpM43E2bnjmy+0jKGi99yiOnXhr9DMAB//zSq0= root@ip-172-31-92-206"
}
