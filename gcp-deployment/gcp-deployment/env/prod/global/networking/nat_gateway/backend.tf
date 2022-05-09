terraform {
  backend "gcs" {
    bucket = "hello-12345"
    prefix = "gcp/env/pilot/global/networking/nat_gateway"
  }
}
