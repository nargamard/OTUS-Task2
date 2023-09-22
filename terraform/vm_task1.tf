resource "yandex_compute_instance" "task1" {
  name                      = "task1"
  zone                      = "ru-central1-a"
  hostname                  = "task1.sarajkins.space"
  allow_stopping_for_update = true

  resources {
    cores  = 2
    memory = 2
    core_fraction = "${var.core_fraction}"
  }

  boot_disk {
    initialize_params {
      image_id    = "${var.ubuntu-22}" 
      name        = "task1"
      type        = "network-hdd"
      size        = "30"     
    }
  }

# yc compute instance attach-disk task1 --disk-name storage1 --mode rw

  # disk {
  #   disk_id = "${yandex_compute_disk.storage1.id}"
  # }
  # filesystem {
  #   filesystem_id = "${yandex_compute_disk.storage1.id}"
  # }

  # filesystem {
  #   filesystem_id = "${yandex_compute_filesystem.storage1.id}"
  # }

  network_interface {
    subnet_id = "${yandex_vpc_subnet.net-101.id}"
    nat       = true
   }

  metadata = {
    user-data = "${file("meta")}"
  }

  scheduling_policy {
    preemptible = "${var.scheduling_policy}"
  }
}