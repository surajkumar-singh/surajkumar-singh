terraform {
  backend "gcs" {
    bucket = "suraj-bucket-test-demo"
    prefix = "gcp/env/pilot/regions/us-east4/compute_engine/linux_vm1"
  }
}
