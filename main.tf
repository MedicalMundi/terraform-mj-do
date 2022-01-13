terraform {
  required_version = "~> 1.0.2"

}


resource "digitalocean_droplet" "tf-backend-prova" {
  image = "ubuntu-20-04-x64"
  name = "tf-backend-prova"
  region = "fra1"
  #size = "s-2vcpu-4gb"
  size     = "s-1vcpu-1gb"
  #private_networking = true
  tags   = ["terraform-backent-remote-testing"]
  #count  = "1"
  graceful_shutdown = false
  backups = false
}
