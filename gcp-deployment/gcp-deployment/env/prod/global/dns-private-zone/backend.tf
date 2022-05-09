terraform {
  backend "gcs" {
    bucket = "hello-12345"
    prefix = "gcp/env/pilot/regions/us-east4/cloud-dns1"
  }
}

