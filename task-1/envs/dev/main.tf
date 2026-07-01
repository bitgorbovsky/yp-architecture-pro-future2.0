resource "yandex_vpc_network" "network" {
  name = "bit-10-network"
}

resource "yandex_vpc_subnet" "network-subnet" {
  name = "bit-10-subnet-dev"
  zone = var.zone
  network_id = yandex_vpc_network.network.id
  v4_cidr_blocks = ["10.0.0.0/24"]
}

module "vm" {
  source = "../../modules/vm"
  vm_name = var.vm_name
  vm_cpus = var.vm_cpus
  vm_ram = var.vm_ram
  network_subnet = yandex_vpc_subnet.network-subnet.id
  network_nat = var.network_nat
  disk_type = var.disk_type
  zone = var.zone
  disk_size = var.disk_size
  image_family = var.image_family
  ssh_pubkey = var.ssh_pubkey
}

output "vm_ip_address" {
  value = module.vm.vm_ip_address
}
output "vm_disk_id" {
  value = module.vm.vm_disk_id
}
