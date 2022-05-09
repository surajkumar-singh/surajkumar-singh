project_id = "simple-sample-project-123-6a20"
region     = "us-east4"
thanos_key_path = "/home/surajkumarsingh/alphasense/demo/gcp-deployment/gcp-deployment/gcp/env/pilot/global/iam/service_accounts/keys/thanos.json"
spinnaker_key_path = "/home/surajkumarsingh/alphasense/demo/gcp-deployment/gcp-deployment/gcp/env/pilot/global/iam/service_accounts/keys/spinnaker.json"
#lm_forwarder_file_path = "/home/ubuntu/anthos-aws/keys/lm_forwarder-key.json"
service_account_mgmt_vm = {
  service_account = "as-mgmt-vm-sa"
  role_name       = "as_mgmt_vm_role"
  permissions = [
    "monitoring.metricDescriptors.create",
    "monitoring.metricDescriptors.get",
    "monitoring.metricDescriptors.list",
    "monitoring.monitoredResourceDescriptors.get",
    "monitoring.monitoredResourceDescriptors.list",
    "monitoring.timeSeries.create",
    "logging.logEntries.create",
  ]
}
service_account_thanos_apps = {
  service_account = "as-thanos-apps-sa"
  role_name       = "as_thanos_apps_role"
  permissions = [
        "storage.objects.create",
        "storage.objects.delete",
        "storage.objects.get",
        "storage.objects.getIamPolicy",
        "storage.objects.list",
        "storage.objects.setIamPolicy" ,
        "storage.objects.update"
    
    
  ]
}
service_account_spinnaker_apps = {
  service_account = "as-spinnaker-apps-sa"
  role_name       = "as_spinnaker_apps_role"
  permissions = [
        "storage.objects.create",
        "storage.objects.delete",
        "storage.objects.get",
        "storage.objects.getIamPolicy",
        "storage.objects.list",
        "storage.objects.setIamPolicy" ,
        "storage.objects.update"
    
    
  ]
}








/*service_account_vault_server = {
  service_account = "pilot-as-vault-server-sa"
  role_name       = "pilot_as_vault_server_sa"
  permissions = [
     "cloudkms.cryptoKeyVersions.useToDecrypt",
     "cloudkms.cryptoKeyVersions.useToEncrypt",
     "resourcemanager.projects.get",
     "storage.objects.create",
     "storage.objects.delete",
     "storage.objects.get",
     "storage.objects.getIamPolicy",
     "storage.objects.list",
     "storage.objects.setIamPolicy",
     "storage.objects.update",
  ]
}*/

/*service_account_anthos_lm_forwarder = {
  service_account = "pilot-as-anthos-lm-forwarder"
  role_name       = "pilot_as_anthos_lm_forwarder"
  permissions = [
    "monitoring.metricDescriptors.create",
    "monitoring.metricDescriptors.get",
    "monitoring.metricDescriptors.list",
    "monitoring.monitoredResourceDescriptors.get",
    "monitoring.monitoredResourceDescriptors.list",
    "monitoring.timeSeries.create",
    "logging.logEntries.create",
  ]
}
*/
