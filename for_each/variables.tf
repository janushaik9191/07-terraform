variable "instance_names" {
  type = map(any)
  default = {
    mysql    = "t3.small"
    backend  = "t3.micro"
    frontend = "t3.micro"
  }
}
variable "domain_name" {
  default = "meerjan.online"
}

variable "zone_id" {
  default = "Z03239512REJNS4HYE714"
}