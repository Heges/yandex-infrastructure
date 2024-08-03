module "tf-yc-network" {
  source = "./modules/tf-yc-network"
}

module "tf-yc-instance" {
  source    = "./modules/tf-yc-instance"
  subnet_id = module.tf-yc-network.yandex_vpc_subnet_ids
}

