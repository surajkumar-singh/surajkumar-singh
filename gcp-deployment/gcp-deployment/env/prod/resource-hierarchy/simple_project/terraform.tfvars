project_name               = "prod-inv-cassandra-ho13"
project_id                 = "prod-inv-cassandra-ho13"
#folder_id                  = ""
organization_id            = ""
billing_account            = ""
activate_apis    = ["compute.googleapis.com", "logging.googleapis.com", "servicenetworking.googleapis.com", "monitoring.googleapis.com", "iam.googleapis.com","dns.googleapis.com"]
labels                     = {purpose="investigation-cassandra" , environment="production" ,createdby="terraform" ,type="standalone"}
