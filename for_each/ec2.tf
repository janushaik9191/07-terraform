resource "aws_instance" "for_each" {
  for_each               = var.instance_names
  ami                    = data.aws_ami.joindevops.id
  instance_type          = each.value
  vpc_security_group_ids = [aws_security_group.for_each.id]
  tags = {
    Name = each.key
  }
}
