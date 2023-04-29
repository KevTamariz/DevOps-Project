resource "google_container_cluster" "cluster-w9" {
  name                     = "cluster-w9"
  location                 = "us-central1-b"
  network                  = data.google_compute_network.default.self_link 
  subnetwork               = data.google_compute_subnetwork.default.self_link
  remove_default_node_pool = true
  initial_node_count       = 1

  release_channel {
    channel = "REGULAR"
  }
}

resource "google_container_node_pool" "node-pool" {
  name       = "node-pool0"
  location   = "us-central1-b"
  cluster    = google_container_cluster.cluster-w9.name
  node_count = 3


  node_config {
    machine_type = "e2-medium"
    service_account = data.google_service_account.terraformaccount.email
    oauth_scopes = [
        "https://www.googleapis.com/auth/cloud-platform"
        ]
  }
}