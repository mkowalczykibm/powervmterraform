output "status" {
    value = "${ibm_pi_instance.pvminstance.pi_instance_status}"
}

output "ip_address" {
    value = "${ibm_pi_instance.pvminstance.addresses}"
}
