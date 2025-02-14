variable "virginia-cidr" {
  type        = string
  description = "cidr virginia"
  default     = "10.0.0.0/24"
}

variable "ohio-cidr" {
  type        = string
  description = "cidr ohio"
  default     = "10.0.1.0/24"
}

variable "cidrs" {
  type    = list(string)
  default = ["10.0.0.0/16", "10.1.0.0/16"]
}
