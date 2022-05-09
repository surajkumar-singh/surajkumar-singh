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

resource "google_compute_firewall" "custom" {
  # provider                = "google-beta"
  for_each                = var.custom_rules
  name                    = each.key
  description             = each.value.description
  direction               = each.value.direction
  network                 = var.network
  project                 = var.project_id
  source_ranges           = each.value.direction == "INGRESS" ? each.value.ranges : null
  destination_ranges      = each.value.direction == "EGRESS" ? each.value.ranges : null
  source_tags             = each.value.use_service_accounts || each.value.direction == "EGRESS" ? null : each.value.sources
  source_service_accounts = each.value.use_service_accounts && each.value.direction == "INGRESS" ? each.value.sources : null
  target_tags             = each.value.use_service_accounts ? null : each.value.targets
  target_service_accounts = each.value.use_service_accounts ? each.value.targets : null
  disabled                = lookup(each.value.extra_attributes, "disabled", false)
  priority                = lookup(each.value.extra_attributes, "priority", 1000)

  dynamic "log_config" {
    for_each = lookup(each.value.extra_attributes, "flow_logs", false) ? [{
      metadata = lookup(each.value.extra_attributes, "flow_logs_metadata", "INCLUDE_ALL_METADATA")
    }] : []
    content {
      metadata = log_config.value.metadata
    }
  }

  dynamic "allow" {
    for_each = [for rule in each.value.rules : rule if each.value.action == "allow"]
    iterator = rule
    content {
      protocol = rule.value.protocol
      ports    = rule.value.ports
    }
  }

  dynamic "deny" {
    for_each = [for rule in each.value.rules : rule if each.value.action == "deny"]
    iterator = rule
    content {
      protocol = rule.value.protocol
      ports    = rule.value.ports
    }
  }
}
