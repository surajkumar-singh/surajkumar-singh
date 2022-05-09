/**
 * Copyright 2019 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

# Whenever a new major version of the network module is released, the
# version constraint below should be updated, e.g. to ~> 4.0.
#
# If that new version includes provider updates, validation of this
# example may fail until that is done.

# [START vpc_peering_create]
module "peering1" {
  
  source        = "../../../../../modules/network-peering"
  
  local_network = data.terraform_remote_state.vpc.outputs.network_name-main 
  peer_network  = data.terraform_remote_state.vpc.outputs.network_name-vault

  export_peer_custom_routes = var.export_peer_custom_routes
  export_local_custom_routes = var.export_local_custom_routes
  export_peer_subnet_routes_with_public_ip = var.export_peer_subnet_routes_with_public_ip
  export_local_subnet_routes_with_public_ip = var.export_local_subnet_routes_with_public_ip
}

module "peering2" {
  
  source        = "../../../../../modules/network-peering"
  
  local_network = data.terraform_remote_state.vpc.outputs.network_name-main 
  peer_network  = data.terraform_remote_state.vpc.outputs.network_name-sec

  export_peer_custom_routes = var.export_peer_custom_routes
  export_local_custom_routes = var.export_local_custom_routes
  export_peer_subnet_routes_with_public_ip = var.export_peer_subnet_routes_with_public_ip
  export_local_subnet_routes_with_public_ip = var.export_local_subnet_routes_with_public_ip
}


module "peering3" {
  
  source        = "../../../../../modules/network-peering"
  
  local_network = data.terraform_remote_state.vpc.outputs.network_name-main 
  peer_network  = data.terraform_remote_state.vpc.outputs.network_name-tools

  export_peer_custom_routes = var.export_peer_custom_routes
  export_local_custom_routes = var.export_local_custom_routes
  export_peer_subnet_routes_with_public_ip = var.export_peer_subnet_routes_with_public_ip
  export_local_subnet_routes_with_public_ip = var.export_local_subnet_routes_with_public_ip
}


module "peering4" {
  
  source        = "../../../../../modules/network-peering"
  
  local_network = data.terraform_remote_state.vpc.outputs.network_name-vault
  peer_network  = data.terraform_remote_state.vpc.outputs.network_name-tools

  export_peer_custom_routes = var.export_peer_custom_routes
  export_local_custom_routes = var.export_local_custom_routes
  export_peer_subnet_routes_with_public_ip = var.export_peer_subnet_routes_with_public_ip
  export_local_subnet_routes_with_public_ip = var.export_local_subnet_routes_with_public_ip
}


module "peering5" {
  
  source        = "../../../../../modules/network-peering"
  
  local_network = data.terraform_remote_state.vpc.outputs.network_name-vault 
  peer_network  = data.terraform_remote_state.vpc.outputs.network_name-sec

  export_peer_custom_routes = var.export_peer_custom_routes
  export_local_custom_routes = var.export_local_custom_routes
  export_peer_subnet_routes_with_public_ip = var.export_peer_subnet_routes_with_public_ip
  export_local_subnet_routes_with_public_ip = var.export_local_subnet_routes_with_public_ip
}


