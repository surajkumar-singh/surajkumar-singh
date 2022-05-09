module "mgmt_group_vm02" {
  source = "../../../../modules/compute_engine/windows_vm"

  /* global */
  project_id = var.project_id
  region     = var.region

  /* machine details */
  machine_name        = var.machine_name
  machine_type        = var.machine_type
  machine_zone        = var.machine_zone
  instance_labels     = var.instance_labels
  vm_deletion_protect = false
  instance_image_selflink = var.instance_image_selflink

  /* network details */
  network            = var.network
  subnetwork         = var.subnetwork
  network_tags       = ["allow-iap"]
  internal_ip        = var.internal
  enable_external_ip = false

  /* disk details */
  boot_disk_info       = var.boot_disk0_info["mgmt_vm02"]
  disk_labels          = var.disk_labels
 #snapshot_policy_name = module.disk_policy_creation.policy_name

  /* service account */
  service_account = var.service_account
}

# Attach data-disk-01 for mgmt_group_vm02

/*module "mgmt_group_vm02_attach_disk01" {
  source = "../../modules/compute_engine/attach_data_disk"

  compute_instance_id  = module.mgmt_group_vm02.compute_instance_id
  machine_zone         = module.mgmt_group_vm02.machine_zone
  data_disk_info       = var.data_disk_mgmt_vm02_info["disk01"]
  disk_labels          = var.disk_labels
  #snapshot_policy_name = module.disk_policy_creation.policy_name
}*/
