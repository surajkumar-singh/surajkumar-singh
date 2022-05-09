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

variable "project_id" {
  description = "Project id where the zone will be created."
  default     = ""
}

/*variable "network_self_links" {
  description = "Self link of the network that will be allowed to query the zone."
  default     = []
}*/

variable "name-main" {
  description = "DNS zone name."
  default     = "foo-local"
}
variable "name-vault" {
  description = "DNS zone name."
  default     = "foo-local"
}
variable "name-tools" {
  description = "DNS zone name."
  default     = "foo-local"
}
variable "name-sec" {
  description = "DNS zone name."
  default     = "foo-local"
}

variable "domain" {
  description = "Zone domain."
  default     = "foo.local."
}

variable "labels-main" {
  type        = map(any)
  description = "A set of key/value label pairs to assign to this ManagedZone"
}
variable "labels-vault" {
  type        = map(any)
  description = "A set of key/value label pairs to assign to this ManagedZone"
}
variable "labels-tools" {
  type        = map(any)
  description = "A set of key/value label pairs to assign to this ManagedZone"
}
variable "labels-sec" {
  type        = map(any)
  description = "A set of key/value label pairs to assign to this ManagedZone"
}

variable "network_self_links-main" {
  description = "List of VPC self links that can see this zone."
  default     = []
  type        = list(string)
}
variable "network_self_links-vault" {
  description = "List of VPC self links that can see this zone."
  default     = []
  type        = list(string)
}
variable "network_self_links-tools" {
  description = "List of VPC self links that can see this zone."
  default     = []
  type        = list(string)
}
variable "network_self_links-sec" {
  description = "List of VPC self links that can see this zone."
  default     = []
  type        = list(string)
}
