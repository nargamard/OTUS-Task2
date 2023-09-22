 output "external_ip_address_task1_wan_yandex_cloud" {
   value = "${yandex_compute_instance.task1.network_interface.0.nat_ip_address}"
 }

 