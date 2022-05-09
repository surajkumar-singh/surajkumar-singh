output "gcs_backup" {
  description = "The name of the storage bucket"
  value       = module.gcs_backup.bucket
}