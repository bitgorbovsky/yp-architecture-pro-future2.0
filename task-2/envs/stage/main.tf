module "network" {
  source      = "../../modules/network"
  subnet_name = "bit-10-subnet-stage"
  zone        = var.zone
  cidr_blocks = ["10.0.1.0/24"]
}

module "vm" {
  source         = "../../modules/vm"
  vm_name        = var.vm_name
  vm_cpus        = var.vm_cpus
  vm_ram         = var.vm_ram
  network_subnet = module.network.subnet_id
  network_nat    = var.network_nat
  disk_type      = var.disk_type
  zone           = var.zone
  disk_size      = var.disk_size
  image_family   = var.image_family
  ssh_pubkey     = var.ssh_pubkey
}

output "vm_ip_address" {
  value = module.vm.vm_ip_address
}

output "vm_disk_id" {
  value = module.vm.vm_disk_id
}
