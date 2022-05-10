terraform {
  backend "gcs" {
    bucket = "sf-terraform-state-us-est4-01-gcs"
    prefix = "gcp/env/infra/global/networking/firewall_rules"
  }
}
