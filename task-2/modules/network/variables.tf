#-----------------------------------------------------------------------------
# Variables
#-----------------------------------------------------------------------------
variable "network_name" {
  type        = string
  description = "Name of the existing VPC network to look up"
  default     = "default"
  nullable    = false
}

variable "subnet_name" {
  type        = string
  description = "Name of the subnet to create"
  nullable    = false
}

variable "zone" {
  type        = string
  description = "Availability zone for the subnet"
  nullable    = false
}

variable "cidr_blocks" {
  type        = list(string)
  description = "CIDR blocks for the subnet"
  default     = ["10.0.0.0/24"]
  nullable    = false
}
