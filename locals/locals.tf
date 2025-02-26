locals {
  ami_id        = data.aws_ami.joindevops.id
  instance_type = var.environment == "prod" ? "t3.medium" : "t3.micro"
  # count.index will not work in locals

}   