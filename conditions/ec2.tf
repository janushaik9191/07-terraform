resource "aws_instance" "condition" {
  count                  = length(var.instance_names)
  ami                    = "ami-09c813fb71547fc4f"
  instance_type          = var.instance_names[count.index] == "mysql" ? "t3.small" : "t3.micro"
  vpc_security_group_ids = [aws_security_group.condition.id]
  tags = {
    Name = var.instance_names[count.index]
  }
}
