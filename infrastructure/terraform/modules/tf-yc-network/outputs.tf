output "yandex_vpc_subnet_ids" {
  value = { for k, v in data.yandex_vpc_subnet.default : k => v.id }
}