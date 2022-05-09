## Static-IP , Cloud Router and NAT Gateway For Main-VPC##

/******************************************
  Resource for External Static IPs
 *****************************************/

resource "google_compute_address" "main-address" {
  count  = 2
  name   = "${var.main_vpc_name}-natgw-cr-us-est4-${count.index}-ext-ip"
  region = var.region
}

/******************************************
  Resource for Cloud Router for NAT GW
 *****************************************/

resource "google_compute_router" "main-router" {
  name    = "${var.main_vpc_name}-natgw-us-est4-01-cr"
  region  = var.region
  network = var.main_vpc_name
}

/******************************************
  Module for NAT Gateway
 *****************************************/

module "main-cloud_nat" {
  source                             = "../../../../../modules/networking/nat_gateway"
  
  project_id                         = var.project_id
  region                             = var.region
  router                             = google_compute_router.main-router.name
  name                               = "${var.main_vpc_name}-natgw-us-est4-01-nat"
  nat_ips                            = google_compute_address.main-address.*.self_link
  min_ports_per_vm                   = "64"
  icmp_idle_timeout_sec              = "15"
  tcp_established_idle_timeout_sec   = "600"
  tcp_transitory_idle_timeout_sec    = "15"
  udp_idle_timeout_sec               = "15"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
}


