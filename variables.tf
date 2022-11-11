variable "name" {
  type        = string
  description = "(optional) describe your variable"
}

variable "vpc_id" {
  description = "VPC ID to place resolver endpoints in"
  type        = string
}

variable "log_group_name" {
  type        = string
  default     = null
  description = "(optional) describe your variable"
}

variable "retention_in_days" {
  type        = number
  default     = 3
  description = "(optional) describe your variable"
}