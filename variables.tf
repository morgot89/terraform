variable "availability_zone" {
  type = string
}

variable "availability_zone_eu-west-1b" {
  type = string
}

variable "tags" {
  description = "Default tags to apply to all resources."
  type        = map(any)
}

