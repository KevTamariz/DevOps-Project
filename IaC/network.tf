data "google_compute_network" "default" {
  name = "default"
}

data "google_compute_subnetwork" "default" {
  name   = "default"
  region = "us-central1"
}

# IP Nginx Ingress
resource "google_compute_global_address" "nginx-ingress" {
  name = "nginx-ingress"
}


resource "google_compute_global_address" "test" {
  name = "test"
}