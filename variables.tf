variable "name" {
  type        = string
  description = "(optional) describe your variable"
}
variable "name_prefix" {
  type        = string
  default     = "/aws/resolver/"
  description = "(optional) describe your variable"
}
variable "vpc_id" {
  description = "VPC ID to place resolver endpoints in"
  type        = string
}

variable "cloud_watch_name_prefix" {
  type        = string
  default     = "/aws/resolvers/"
  description = "(optional) describe your variable"
}

variable "retention_in_days" {
  type        = number
  default     = 3
  description = "(optional) describe your variable"
}