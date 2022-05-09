
/******************************************
	GCS Bucket configuration 
 *****************************************/
module "gcs_backup" {
  source        = "./modules/cloud_storage"
  project_id    = var.project_id
  location      = var.region
  name          = "sf-terraform-state-us-est4-01-gcs"
  versioning    = "true"
  storage_class = var.storage_class
  labels = var.labels
  uniform_bucket_level_access = "true"
}