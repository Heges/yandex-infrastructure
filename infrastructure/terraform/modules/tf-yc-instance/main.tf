resource "yandex_compute_instance" "instance" {
  name        = var.name
  platform_id = var.platform_id
  
  resources {
    cores  = var.cores
    memory = var.memory
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
      size     = var.disk_size
    }
  }

  network_interface {
    subnet_id = lookup(var.subnet_id, var.zone)
    nat       = var.nat
  }

  metadata = {
    user-data = templatefile("${path.module}/cloud-init.yaml", {
      ssh_public_key = var.ssh_public_key
    })
  }

  scheduling_policy {
    preemptible = var.preemptible
  }

  zone = var.zone
}