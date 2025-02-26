variable "instance_names" {
  type        = list(string)
  default     = ["mysql", "backend", "frontend"]
  description = "instance names"
}

variable "domain_name" {
  default = "meerjan.online"
}

variable "zone_id" {
  default = "Z03239512REJNS4HYE714"
}