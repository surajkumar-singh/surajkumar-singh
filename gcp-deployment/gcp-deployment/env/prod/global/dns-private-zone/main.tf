/**
 * Copyright 2018 Google LLC
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
 module "dns-private-zone-main" {
  source     = "../../../../modules/cloud-dns"
  project_id = var.project_id
  type       = "private"
  name       = var.name-main
  domain     = var.domain
  labels     = var.labels-main 

  private_visibility_config_networks = var.network_self_links-main
 }
module "dns-private-zone-vault" {
  source     = "../../../../modules/cloud-dns"
  project_id = var.project_id
  type       = "private"
  name       = var.name-vault
  domain     = var.domain
  labels     = var.labels-vault

  private_visibility_config_networks = var.network_self_links-vault
}

  module "dns-private-zone-tools" {
  source     = "../../../../modules/cloud-dns"
  project_id = var.project_id
  type       = "private"
  name       = var.name-tools
  domain     = var.domain
  labels     = var.labels-tools

  private_visibility_config_networks = var.network_self_links-tools
  }
  module "dns-private-zone-sec" {
  source     = "../../../../modules/cloud-dns"
  project_id = var.project_id
  type       = "private"
  name       = var.name-sec
  domain     = var.domain
  labels     = var.labels-sec

  private_visibility_config_networks = var.network_self_links-sec
  }

 /* recordsets = [
    {
      name = "ns"
      type = "A"
      ttl  = 300
      records = [
        "127.0.0.1",
      ]
    },
    {
      name = ""
      type = "NS"
      ttl  = 300
      records = [
        "ns.${var.domain}",
      ]
    },
    {
      name = "localhost"
      type = "A"
      ttl  = 300
      records = [
        "127.0.0.1",
      ]
    },
    {
      name = ""
      type = "MX"
      ttl  = 300
      records = [
        "1 localhost.",
      ]
    },
    {
      name = ""
      type = "TXT"
      ttl  = 300
      records = [
        "\"v=spf1 -all\"",
      ]
    },
  ]*/
  
