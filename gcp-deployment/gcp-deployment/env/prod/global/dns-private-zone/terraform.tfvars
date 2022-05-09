project_id = "XXXXXXX"
domain = "example1.com."


name-main  = "demo1"
name-vault = "demo2"
name-tools = "demo3"
name-sec   = "demo4"
labels-main = {
    type="internal"
    purpose="private-zone-dns-main-vpc"
    createdby = "terraform"
  }
network_self_links-main= ["https://www.googleapis.com/compute/v1/projects/searce-playground-v1/global/networks/suraj-test"]


labels-vault = {
    type="internal"
    purpose="private-zone-dns-vault-vpc"
    createdby = "terraform"
  }
network_self_links-vault= ["https://www.googleapis.com/compute/v1/projects/searce-playground-v1/global/networks/XXXX"]


labels-tools = {
    type="internal"
    purpose="private-zone-dns-tools-vpc"
    createdby = "terraform"
  }
network_self_links-tools= ["https://www.googleapis.com/compute/v1/projects/searce-playground-v1/global/networks/XXXXX"]

labels-sec = {
    type="internal"
    purpose="private-zone-dns-sec-vpc"
    createdby = "terraform"
  }
network_self_links-sec= ["https://www.googleapis.com/compute/v1/projects/searce-playground-v1/global/networks/XXXXX"]
