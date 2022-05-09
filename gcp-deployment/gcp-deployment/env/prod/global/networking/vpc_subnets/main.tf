/******************************************
	Main-VPC configuration
 *****************************************/
module "main-vpc" {
  source                  = "../../../../../modules/networking/vpc"
  project_id              = var.project_id
  network_name            = var.main_vpc_name
  routing_mode            = var.routing_mode
  description             = var.description
  shared_vpc_host         = false
  auto_create_subnetworks = false
}

/******************************************
       Main-VPC-Subnet configuration
 *****************************************/
 module "subnets-apps-pvt" {
  source                  = "../../../../../modules/networking/subnets"
  project_id              = var.project_id
  network_name            = module.main-vpc.network_name
  subnets                 = var.apps_subnets
}
module "subnets-db-pvt" {
  source                  = "../../../../../modules/networking/subnets"
  project_id              = var.project_id
  network_name            = module.main-vpc.network_name
  subnets                 = var.db_subnets
}