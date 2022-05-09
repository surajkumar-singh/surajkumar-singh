/* GLOBAL */
project_id = "searce-playground-v1"
region = "us-east4"

/* Subnets */
main_vpc_name  = "sf-prod-main-01-vpc"

apps_subnets = [
  {
    subnet_name           = "sf-prod-apps-pvt-us-est4-subnet"
    subnet_ip             = "172.168.0.0/24"
    subnet_region         = "us-east4"
    subnet_private_access = "true"
    subnet_flow_logs      = "false"
  }
]
db_subnets = [
  {
    subnet_name           = "sf-prod-db-pvt-us-est4-subnet"
    subnet_ip             = "172.168.1.0/24"
    subnet_region         = "us-east4"
    subnet_private_access = "true"
    subnet_flow_logs      = "false"
  }
]
