variable "network_zone" {
  description = "Yandex.Cloud network availability zones"
  type        = string
  default     = "ru-central1-a"
}

data "yandex_vpc_network" "default" {
  name = "default"
}

data "yandex_vpc_subnet" "default" {
  for_each = toset(var.network_zones)
  name     = "${data.yandex_vpc_network.default.name}-${each.key}"
}

output "yandex_vpc_subnet_ids" {
  value = { for k, v in data.yandex_vpc_subnet.default : k => v.id }
}