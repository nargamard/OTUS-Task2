# Идентификатор облака
variable "yandex_cloud_id" {
  default = "b1gi491ooe67mld8atql"
}

# Идентификатор каталога (Folder) в облаке
variable "yandex_folder_id" {
  default = "b1gbdtedb4koa56sb2rr"
}

# Зона по умолчанию
variable "yandex_compute_default_zone" {
  default = "ru-central1-a"
}

# Бакет для backend
variable "backet_for_backend" {
  default = "terraform-object-storage-nargamard"
}

# ID yc compute image list Ubuntu 22.04 LTS
variable "ubuntu-22" {
  default = "fd8n6sult0bipcm75u12"
}

# Прерываемая виртуальная машина или нет
variable "scheduling_policy" {
#  default = "true"
  default = "false"
}

# Значение core_fraction
variable "core_fraction" {
  default = "100"
}