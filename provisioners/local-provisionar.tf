resource "aws_instance" "local_provisionar" {
  ami                    = "ami-09c813fb71547fc4f"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.provisionar_terraform.id]
  tags = {
    Name = "local-provisionar"
  }
  # in this case my laptop is local
  provisioner "local-exec" {
    command = "echo ${self.public_ip} >> public_ips.txt"
  }
}