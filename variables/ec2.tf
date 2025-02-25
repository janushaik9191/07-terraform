resource "aws_instance" "terraform" {
  ami                    = var.ami_id # left side and right side names are not to be same
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]
  tags                   = var.tags
}
