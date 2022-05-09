# Global

project_id         = "XXXXXXXX"

region             = "us-east4"



# Machine Details

machine_type = "e2-medium"

machine_name = "as-mgmt-linux-us-est4-a-gce"

machine_zone = "us-east4-c"

internal     = "10.66.0.29"

instance_image_selflink="projects/ubuntu-os-cloud/global/images/ubuntu-1804-bionic-v20210129"



# Boot disk info

boot_disk0_info = {

  mgmt_group_vm01 = {

    disk_size_gb = "50"

    disk_type    = "pd-standard"

    }

}



# Snapshot policy



#disk_snapshot_policy_name = "pilot-as-mgmt-disksnapshot-policy"



#Network Interface

network             = "as-main-01-vpc"

subnetwork = "as-main-01-vpc-vm-pvt-us-est4-sub"



#Labels

labels = {

  ostype      = "linux" 

  purpose     = "management-server"

}



#Access scopes

service_account = {

  email  = "XXXXXXXXXXXXXXXXXXX"

  scopes = ["cloud-platform"]

}
