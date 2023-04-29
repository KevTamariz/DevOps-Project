# Set backend
terraform {
  backend "gcs" {
    bucket = "terraform_state_w9"
    prefix = "state"
    credentials = "w9-challenge-809de07a0c6e.json"
  }
}

# Provider
provider "google" {
  project = "w9-challenge"
  credentials = "${file("w9-challenge-809de07a0c6e.json")}"
  region  = "us-central1"
  zone    = "us-central1-b"
}