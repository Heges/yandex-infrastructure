terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = ">= 0.87.0"
    }
  }
  
  # Описание бэкенда хранения состояния
  #backend "s3" {
  #  endpoint   = "storage.yandexcloud.net"
  #  bucket     = "terraform-state-std-030-18"
  #  region     = "ru-central1"
  #  key        = "terraform.tfstate"
  #  skip_region_validation      = true
  #  skip_credentials_validation = true
 # }
}

module "tf-yc-network" {
  source = "./modules/tf-yc-network"
}

module "tf-yc-instance" {
  source    = "./modules/tf-yc-instance"
  subnet_id = module.tf-yc-network.yandex_vpc_subnet_ids
}

