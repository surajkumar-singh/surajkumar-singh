terraform {
  backend "gcs" {
    bucket = "mayank-test-backend-bucket"
    prefix = "gcp/env/pilot/global/networking/cloud_vpn"
  }
}
