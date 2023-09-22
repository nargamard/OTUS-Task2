# /bin/bash
export external_ip_address_task1_wan_yandex_cloud=$(< output.json jq -r '.external_ip_address_task1_wan_yandex_cloud | .value')

envsubst < templates/hosts.j2 > ../ansible/inventory/hosts

