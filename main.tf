terraform {
  required_providers {
    equinix = {
      source  = "equinix/equinix"
      version = "1.2.0"
    }
  }
}


provider "equinix" {
  client_id     = "XXXXX"
  client_secret = "XXXXX"
  endpoint      = "https://api.equinix.com"
}


resource "equinix_network_ssh_key" "thiskey" {
  name       = "user-sshkey-equinix-Demo"
  public_key = file("SamplePrivateKey.ppk")
}




