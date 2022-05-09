terraform {
  backend "gcs" {
    bucket = "suraj-bucket-test-demo"
    prefix = "gcp/env/pilot/global/networking/compute1"
  }
}
