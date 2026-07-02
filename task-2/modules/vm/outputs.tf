output "vm_ip_address" {
  value = yandex_compute_instance.vm.network_interface.0.ip_address
}
output "vm_disk_id" {
  value = yandex_compute_disk.vm-disk.id
}
