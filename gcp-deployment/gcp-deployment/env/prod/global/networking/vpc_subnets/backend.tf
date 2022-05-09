#terraform {
  /*backend "gcs" {
    bucket = "hello-12345"
  }*/
terraform {
  cloud {
    organization = "hello1"

    workspaces {
      name = "suraj-demo"
    }
  }
}
