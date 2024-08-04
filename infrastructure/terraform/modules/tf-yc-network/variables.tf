variable "network_zones" {
  description = "Список зон, используемых в vpc_subnet"
  type = list(string)
  default = ["ru-central1-a", "ru-central1-b", "ru-central1-c"]
}