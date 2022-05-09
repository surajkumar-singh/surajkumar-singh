data "terraform_remote_state" "vpc" {
  backend = "gcs"
  workspace = terraform.workspace

  config = {
    #project = "simple-sample-project-123-6a20"
    bucket  = "suraj-bucket-test-demo"
    prefix  = "/suraj/vpc1"
  }
}

