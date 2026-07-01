#-----------------------------------------------------------------------------
# Module
#-----------------------------------------------------------------------------
data "yandex_compute_image" "os-image" {
  family = var.image_family
}

resource "yandex_compute_disk" "vm-disk" {
  name = "${var.vm_name}-disk"
  type = var.disk_type
  zone = var.zone
  image_id = data.yandex_compute_image.os-image.image_id
  size = var.disk_size
}

resource "yandex_compute_instance" "vm" {
  name = var.vm_name
  zone = var.zone

  resources {
    cores = var.vm_cpus
    memory = var.vm_ram
  }

  boot_disk {
    disk_id = yandex_compute_disk.vm-disk.id
  }

  network_interface {
    subnet_id = var.network_subnet
    nat = var.network_nat
  }

  metadata = {
    ssh-keys = "ubuntu:${file(var.ssh_pubkey)}"
  }
}
