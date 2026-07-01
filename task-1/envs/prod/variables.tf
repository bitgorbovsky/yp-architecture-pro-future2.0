#-----------------------------------------------------------------------------
# Variables
#-----------------------------------------------------------------------------
variable "disk_type" {
  type = string
  default = "network-ssd"
  description = "Type of disk connected to VM"
  nullable = false
}

variable "zone" {
  type = string
  default = "ru-central1-d"
  description = "Availability zone"
  nullable = false
}

variable "disk_size" {
  type = number
  default = 15
  description = "Disk size in gigabytes"
  nullable = false
}

variable "vm_name" {
  type = string
  description = "Name of VM"
  nullable = false
}

variable "vm_cpus" {
  type = number
  description = "Count of CPUS"
  default = 2
  nullable = false
}

variable "vm_ram" {
  type = number
  description = "Size of RAM in GB"
  default = 2
  nullable = false
}

variable "network_nat" {
  type = bool
  description = "Enabled or disabled NAT for this VM and subnet"
  default = true
  nullable = false
}

variable "image_family" {
  type = string
  description = "Family of OS images"
  default = "ubuntu-2204-lts"
  nullable = false
}

variable "ssh_pubkey" {
  type = string
  description = "Path to ssh public key"
  nullable = false
}
