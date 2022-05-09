variable "project_id" {
  type        = string
  description = "GCP Project ID where the bucket will be created"
}

variable "region" {
  type        = string
  description = "GCP region where the bucket will be created"
}

variable "labels" {
  type        = map
  description = "The labels for the GCS bucket"
}

variable "storage_class" {
  type        = string
  description = "The storage class for the GCS bucket"
}