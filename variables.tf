variable "name" {
  description = "IAM role name"
  type        = string
}

variable "assume_role_policy" {
  description = "Assume role policy JSON"
  type        = string
}

variable "managed_policy_arns" {
  description = "Managed policy ARNs to attach"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Tags to apply to IAM resources"
  type        = map(string)
  default     = {}
}
