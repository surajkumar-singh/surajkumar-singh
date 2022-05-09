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

module "project-factory" {
  source                   = "../../../../modules/project"
  random_project_id        = false
  name                     = var.project_name
  project_id               = var.project_id
  org_id                   = var.organization_id
  billing_account          = var.billing_account
  #folder_id               = var.folder_id
  labels                   = var.labels
  #default_service_account = "deprivilege"
  create_project_sa        = false

  activate_apis = var.activate_apis 
}
