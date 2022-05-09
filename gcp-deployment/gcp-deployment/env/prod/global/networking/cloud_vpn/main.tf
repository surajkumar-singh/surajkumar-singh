/******************************************
	HA VPN GCP to AWS
 *****************************************/
 module "vpn_ha" {
  source                = "../../../modules/networking/vpn"
  project_id            = var.project_id
  region                = var.region
  network               = var.vpc_name
  name                  = "${var.vpc_name}-to-aws-us-est4-ha-vpn"
  router_asn    = 64514

  peer_external_gateway = {
      redundancy_type   = "TWO_IPS_REDUNDANCY"
      interfaces = [{
          id         = 0
          ip_address = "3.228.125.114"
      },
      {
          id         = 1
          ip_address = "54.173.58.220"
      }]
  }
  tunnels       = {
    remote-0    = {
      bgp_peer  = {
                    address = "169.254.11.1"
                    asn     = 64512
                  }
      bgp_peer_options                = null
      bgp_session_range               = "169.254.11.2/30"
      ike_version                     = 2
      vpn_gateway_interface           = 0
      peer_external_gateway_interface = 0
      shared_secret                   = var.secret_key_phrase0
    }
    remote-1    = {
      bgp_peer  = {
                    address = "169.254.12.1"
                    asn     = 64512
                  }
      bgp_peer_options                = null
      bgp_session_range               = "169.254.12.2/30"
      ike_version                     = 2
      vpn_gateway_interface           = 0
      peer_external_gateway_interface = 1
      shared_secret                   = var.secret_key_phrase1
    }
  }
}