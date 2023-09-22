# Network
resource "yandex_vpc_address" "addr" {
  name = "ip-${terraform.workspace}"
  external_ipv4_address {
    zone_id = "${var.yandex_compute_default_zone}"
  }
}

resource "yandex_vpc_network" "default" {
  name = "net-${terraform.workspace}"
}

resource "yandex_vpc_subnet" "net-101" {
  name                    = "subnet-${terraform.workspace}-101"
  zone                    = "${var.yandex_compute_default_zone}"
  network_id              = "${yandex_vpc_network.default.id}"
  v4_cidr_blocks          = ["192.168.101.0/24"]
}
