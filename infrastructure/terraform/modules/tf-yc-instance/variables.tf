variable "name" {
  description = "Имя ВМ"
  type        = string
  default     = "kns-vm"
}

variable "platform_id" {
  description = "ID платформы для ВМ"
  type        = string
  default     = "standard-v1"
}

variable "cores" {
  description = "Количество ядер ЦП"
  type        = number
  default     = 2
}

variable "memory" {
  description = "Количество ОЗУ в гигабайтах"
  type        = number
  default     = 4
}

variable "image_id" {
  description = "Какой используется образ"
  type        = string
  default     = "fd84t8blmupgfjdv86br"
}

variable "disk_size" {
  description = "Размер диска в гигабайтах"
  type        = number
  default     = 50
}

variable "subnet_id" {
  description = "Идентификатор подсети"
  type = map(string)
}

variable "nat" {
  description = "Определения NAT - вкл./выкл."
  type        = bool
  default     = true
}

variable "preemptible" {
  description = "Может ли ВМ  быть принудительна остановлена в любой момент"
  type        = bool
  default     = true
}

variable "zone" {
  description = "Зона в которой  будет  создана ВМ"
  type        = string
  default     = "ru-central1-a"
}

variable "ssh_public_key" {
  description = "Публичная часть  ключа"
  type        = string
}
