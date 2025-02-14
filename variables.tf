variable "virginia-cidr" {
  type        = string
  description = "cidr virginia"
  default     = "192.168.1.0/16"
}

variable "ohio-cidr" {
  type        = string
  description = "cidr ohio"
  default     = "192.168.2.0/16"
}

variable "cidrs" {
  type    = list(string)
  default = ["10.0.0.0/16", "10.1.0.0/16"]
}
