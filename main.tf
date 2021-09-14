## Template to be used by the IBM Provider for Power Systems

#resource "local_file" "vm_private_key" {
#    content_base64    = "${var.vm_private_key_base64}"
#    filename          = "tmp/id_rsa"
#}
#data "ibm_pi_network" "power_networks" {
#    count                = "${length(var.networks)}"
#    pi_network_name      = "${var.networks[count.index]}"
#    pi_cloud_instance_id = "${var.power_instance_id}"
#}

resource "ibm_pi_instance" "pvminstance" {
    pi_memory             = "${var.memory}"
    pi_processors         = "${var.processors}"
    pi_instance_name      = "${var.vm_name}"
    pi_proc_type          = "${var.proc_type}"
    pi_image_id           = "${var.image_id}"
    pi_volume_ids         = []
    pi_network_ids        = "${var.networks}"
    pi_key_pair_name      = "${var.ssh_key_name}"
    pi_sys_type           = "${var.system_type}"
    pi_replication_policy = "${var.replication_policy}"
    pi_replication_scheme = "${var.replication_scheme}"
    pi_replicants         = "${var.replicants}"
    pi_cloud_instance_id  = "${var.power_instance_id}"
}
