resource "yandex_compute_disk" "storage1" {
  name       = "storage1"
  type       = "network-hdd"
  zone       = "${var.yandex_compute_default_zone}"
  size       = 1
}

resource "yandex_compute_disk" "storage2" {
  name       = "storage2"
  type       = "network-hdd"
  zone       = "${var.yandex_compute_default_zone}"
  size       = 1
}

resource "yandex_compute_disk" "storage3" {
  name       = "storage3"
  type       = "network-hdd"
  zone       = "${var.yandex_compute_default_zone}"
  size       = 1
}

resource "yandex_compute_disk" "storage4" {
  name       = "storage4"
  type       = "network-hdd"
  zone       = "${var.yandex_compute_default_zone}"
  size       = 1
}

resource "yandex_compute_disk" "storage5" {
  name       = "storage5"
  type       = "network-hdd"
  zone       = "${var.yandex_compute_default_zone}"
  size       = 1
}

resource "yandex_compute_disk" "storage6" {
  name       = "storage6"
  type       = "network-hdd"
  zone       = "${var.yandex_compute_default_zone}"
  size       = 30
}
