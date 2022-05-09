#Global
project_id = "XXXXXXXXXX"
region     = "us-east4"

#Machine Details
machine_name = "as-mgmt-windows-us-est4-01-gce"
machine_type = "e2-medium"
machine_zone = "us-east4-c"
internal = "10.66.0.24"
instance_image_selflink = "projects/windows-cloud/global/images/windows-server-2016-dc-v20200609"

#Network Interface
network      = "as-main-01-vpc"
subnetwork   = "as-main-01-vpc-vm-pvt-us-est4-sub"
#network_tags = [""]

# Boot disk info for all app group VMs
boot_disk0_info = {
  mgmt_vm02 = {
    disk_size_gb = 50
    disk_type    = "pd-standard"
  }
}

#disk_snapshot_policy_name = "suraj-test"

#Labels
instance_labels = {
  purpose = "management-server"
  ostype  = "windows"
}

disk_labels = ({
  env        = "prod"
  group_name = "mgmt-group"
})

#Access scopes 
service_account = {
  email  = "XXXXXXXXXXXXXXXgserviceaccount.com"
  scopes = ["cloud-platform"]
}

/*data_disk_mgmt_vm02_info = {
  disk01 = {
    disk_name    = "prod-projectid-mgmt-bastion-us-ct1-a-02-data01-disk"
    disk_size_gb = 50
    disk_type    = "pd-standard"
  }
}*/
