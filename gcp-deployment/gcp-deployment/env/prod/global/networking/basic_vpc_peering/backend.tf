terraform {
  backend "gcs" {
    bucket = "suraj-bucket-test-demo"
    prefix = "/suraj/vpc-peering/hello1"
  }
}
