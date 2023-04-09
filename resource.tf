resource "aws_instance" "project1" {
  ami           = "ami-0763cf792771fe1bd"
  instance_type = "t2.micro"
  key_name      = "prashanth-key"

  tags = {
    Name = "Project1"
  }
}
resource "aws_key_pair" "prashanth-key" {
  key_name   = "prashanth-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDK97i6K8Onl/qxiuCYezL/GgT8WiHti4a66RwiEAem2O9lb6os3WUXybvOVeoCckABLR9x2qclToGD1oQuMlFvtCiCJCYmvjR87XWwV7jsWj2joS/N3beX7Xx6trdBZy2E/I5kQA4nvyPnrjP7KvsKuK3vE+NYWlagM2x3tpWsCychH21nkRCZLSsMrhLC1kjuje5EdD/YaXPWk213XC402x541JSqebpWNp7ImLpzKnSeUWDuVeanbEcMQxF1DqU1z/GgMd7h6nyQDlK99pyx3eNlKTqxfyyE/hqnF2cdsvXH2B67enl7VBHp50uLl2fstZAGkcobnOPXJD1CbSDf root@ip-172-31-45-126.ap-south-1.compute.internal"
}
