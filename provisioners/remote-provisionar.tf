resource "aws_instance" "remote_provisionar" {
  ami                    = "ami-09c813fb71547fc4f"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.provisionar_terraform.id]
  tags = {
    Name = "remote-provisionar"
  }
  # in this case remote-provisionar is server to run remote-exec
  connection {
    type     = "ssh"
    user     = "ec2-user"
    password = "DevOps321"
    host     = self.public_ip
  }

  # by default provisioners will execute at the time of creation
  provisioner "remote-exec" {
    inline = [
      "sudo dnf install ansible -y",
      "sudo dnf install nginx -y",
      "sudo systemctl start nginx",
    ]
  }
  # using when condition we can run provisionars at the time of destroy
  provisioner "remote-exec" {
    when = destroy
    inline = [
      "sudo systemctl stop nginx",
    ]
  }
}