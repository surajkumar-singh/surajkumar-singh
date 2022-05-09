/******************************************
Management VM
******************************************/
module "mgmt_group_vm01" {
  source = "../../../../modules/compute_engine/linux_vm"

  /* global */
  project_id = var.project_id
  region     = var.region

  /* machine details */
  machine_name        = var.machine_name
  machine_type        = var.machine_type
  machine_zone        = var.machine_zone
  instance_labels     = var.labels
  vm_deletion_protect = false
  instance_image_selflink = var.instance_image_selflink

  /* network details */
  network            = var.network
  subnetwork         = var.subnetwork
  network_tags       = ["allow-iap"]
  internal_ip        = var.internal
  enable_external_ip = false

  /* disk details */
  boot_disk_info       = var.boot_disk0_info["mgmt_group_vm01"]
  disk_labels          = var.labels
  #snapshot_policy_name = module.disk_policy_creation.policy_name

 /* service account */
 service_account = var.service_account

#   /*metadata*/
 #metadata = {
    #startup-script = file("../../../../resources/scripts/metadata.sh")
  #}
}
