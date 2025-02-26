resource "aws_instance" "locals_demo" {
  count                  = length(var.instance_names)
  ami                    = local.ami_id
  instance_type          = var.instance_names[count.index] == "mysql" ? "t3.small" : "t3.micro"
  vpc_security_group_ids = [aws_security_group.locals_demo.id]
  tags = {
    Name = var.instance_names[count.index]
  }
}

# if environment is prod then create t3.medium, otherwise create t3.micro
resource "aws_instance" "elasticsearch" {

  ami                    = local.ami_id
  instance_type          = local.instance_type
  vpc_security_group_ids = [aws_security_group.locals_demo.id]
  tags = {
    Name = "terraform"
  }
}