output "instance_id" {
  description = "Идентификатор созданной виртуальной машины"
  value       = module.tf-yc-instance.instance_id
}

output "instance_ip" {
  description = "Внешний IP-адрес виртуальной машины"
  value       = module.tf-yc-instance.instance_ip
}