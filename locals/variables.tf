variable "instance_names" {
  type        = list(string)
  default     = ["mysql", "backennd", "frontend"]
  description = "instance names"
}
variable "environment" {
  default = "prod"
}