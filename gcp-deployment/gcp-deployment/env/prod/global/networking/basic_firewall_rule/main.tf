/***********************************
 Main Vpc Firewall-Rules
***********************************/
module "main-vpc-firewall" {
  source                  = "../../../../../modules/fabric-net-firewall"
  project_id              = var.project_id
  network                 = var.main_vpc_name
 #internal_ranges_enabled = false
  #internal_ranges         = ["10.0.0.0/0"]
  #internal_target_tags    = ["internal"]
  custom_rules = {
    sf-prod-default-deny-int-all-all-all-deny-rule = {
      description          = "This firewall will deny all egress traffic to internet"
      direction            = "EGRESS"
      action               = "deny"
      ranges               = ["0.0.0.0/0"]
      sources              = null
      targets              = []  #apply to all targets in the network
      use_service_accounts = false
      priority             = 64000
      rules = [
        {
          protocol = "all"
          ports    = []
        }
      ]
      extra_attributes = {
        disabled           = false
        priority           = 64000
        flow_logs          = false
        flow_logs_metadata = "EXCLUDE_ALL_METADATA"
}
    }
 
    sf-prod-iap-googleip-allow-iap-tcp-22-3389-allow-rule = {
      description          = "This firewall rule is to allow GCP Cloud IAP IP ranges"
      direction            = "INGRESS"
      action               = "allow"
      ranges               = ["35.235.240.0/20"]
      sources              = null
      targets              = ["allow-iap"]
      use_service_accounts = false
      rules = [
        {
          protocol = "tcp"
          ports    = ["22","3389"]
        }
      ]
      extra_attributes = {
        disabled           = false
        priority           = 1000
        flow_logs          = false
        flow_logs_metadata = "EXCLUDE_ALL_METADATA"
}
  }
    sf-prod-ntw-test-ingress-allow-icmp-tcp-80-allow-rule = {
      description          = "This firewall rule is to allow AWS ec2-instance to reach GCP VM"
      direction            = "INGRESS"
      action               = "allow"
      ranges               = ["10.0.0.1/32"]
      sources              = null
      targets              = ["allow-icmp-tcp"]
      use_service_accounts = false
      rules = [
        {
          protocol = "tcp"
          ports    = ["80"]
        },
        {
          protocol = "icmp"
          ports    = []
        }
      ]
      extra_attributes = {
        disabled           = false
        priority           = 2000
        flow_logs          = false
        flow_logs_metadata = "EXCLUDE_ALL_METADATA"
}
}
    sf-prod-ntw-test-egress-allow-icmp-tcp-80-allow-rule = {
      description          = "This firewall rule is to allow GCP VM to reach AWS ec2-instance"
      direction            = "EGRESS"
      action               = "allow"
      ranges               = ["10.0.0.1/32"]
      sources              = null
      targets              = ["allow-icmp-tcp"]
      use_service_accounts = false
      rules = [
        {
          protocol = "tcp"
          ports    = ["80"]
        },
        {
          protocol = "icmp"
          ports    = []
        }
      ]
      extra_attributes = {
        disabled           = false
        priority           = 3000
        flow_logs          = false
        flow_logs_metadata = "EXCLUDE_ALL_METADATA"
}
}
}
}