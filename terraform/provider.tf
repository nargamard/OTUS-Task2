terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"

  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "terraform-storage-nargamard"
    region     = "ru-central1-a"
    key        = "terraform.tfstate"
    access_key = "YCAJEUSZH8suOX5OHauL9wCw4"
    secret_key = "YCNDIxelgOxzfZ72iRO7LLmAnvtQJBZmb87u6DJb"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

provider "yandex" {
  service_account_key_file = "/home/andrej/Документы/keys/key.json"
  cloud_id  = "${var.yandex_cloud_id}"
  folder_id = "${var.yandex_folder_id}"
  zone = "${var.yandex_compute_default_zone}"
}