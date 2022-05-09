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


variable "project_name" {
  description = "The project name that will be created"
}
variable "organization_id" {
  description = "The organization id for the associated services"
}

variable "billing_account" {
  description = "The ID of the billing account to associate this project with"
}
/*variable "folder_id" {
  description = "The ID of a folder to host this project"
  type        = string
  default     = ""
}*/

variable "labels" {
  description = "Map of labels for project"
  type        = map(string)
}

variable "activate_apis" {
  description = "The api which are going to get enable on the project"
  type        = list(string)
  default     = []
}

variable "project_id" {
  description = "The project id for the project"
  type        = string
}

