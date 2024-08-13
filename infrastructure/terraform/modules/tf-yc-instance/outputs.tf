output "instance_id" {
  description = "Идентификатор созданной виртуальной машины"
  value       = yandex_compute_instance.instance.id
}

output "instance_ip" {
  description = "Внешний IP-адрес виртуальной машины"
  value       = yandex_compute_instance.instance.network_interface[0].nat_ip_address
}
