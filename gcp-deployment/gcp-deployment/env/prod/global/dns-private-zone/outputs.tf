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

output "name_servers-main" {
  description = "Zone name servers."
  value       = module.dns-private-zone-main.name_servers
}

output "name_servers-vault" {
  description = "Zone name servers."
  value       = module.dns-private-zone-vault.name_servers
}

output "name_servers-tools" {
  description = "Zone name servers."
  value       = module.dns-private-zone-tools.name_servers
}

output "name_servers-sec" {
  description = "Zone name servers."
  value       = module.dns-private-zone-sec.name_servers
}
