resource "google_project_service" "compute_api" {
  project = "w9-challenge"
  service = "compute.googleapis.com"
  
  timeouts {
    create = "30m"
    update = "40m"
  }

  disable_dependent_services = true
}

resource "google_project_service" "kubernetes_api" {
  project = "w9-challenge"
  service = "container.googleapis.com"

  timeouts {
    create = "30m"
    update = "40m"
  }

  disable_dependent_services = true 
}

resource "google_project_service" "api_dns" {
  project = "w9-challenge"
  service = "dns.googleapis.com"

 timeouts {
    create = "30m"
    update = "40m"
  }

  disable_dependent_services = true
}

resource "google_project_service" "api_secret" {
  project = "w9-challenge"
  service = "secretmanager.googleapis.com"

 timeouts {
    create = "30m"
    update = "40m"
  }

  disable_dependent_services = true
}

resource "google_project_service" "api_db" {
  project = "w9-challenge"
  service = "sqladmin.googleapis.com"

 timeouts {
    create = "30m"
    update = "40m"
  }

  disable_dependent_services = true
}