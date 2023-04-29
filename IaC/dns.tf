# DNS Zone
resource "google_dns_managed_zone" "dns-w9" {
  name        = "dns-w9"
  dns_name    = "ktamariz.gq."
  description = "DNS Zone for week 9"
  }

resource "random_id" "rnd" {
  byte_length = 4
}

# DNS Record - K8 App
resource "google_dns_record_set" "app" {
  name = "app.${google_dns_managed_zone.dns-w9.dns_name}"
  type = "A"
  ttl  = 300

  managed_zone = google_dns_managed_zone.dns-w9.name

  rrdatas = ["34.133.5.230"]
}


# DNS Record - ArgoCD
resource "google_dns_record_set" "argo" {
  name = "argo.${google_dns_managed_zone.dns-w9.dns_name}"
  type = "A"
  ttl  = 300

  managed_zone = google_dns_managed_zone.dns-w9.name

 rrdatas = ["34.133.5.230"]
}


# DNS Record - WordPress
resource "google_dns_record_set" "wordpress" {
  name = "wordpress.${google_dns_managed_zone.dns-w9.dns_name}"
  type = "A"
  ttl  = 300

  managed_zone = google_dns_managed_zone.dns-w9.name

 rrdatas = ["34.133.5.230"]
}


# DNS Record - Vault
resource "google_dns_record_set" "vault" {
  name = "vault.${google_dns_managed_zone.dns-w9.dns_name}"
  type = "A"
  ttl  = 300

  managed_zone = google_dns_managed_zone.dns-w9.name

 rrdatas = ["34.133.5.230"]
}


# DNS Record - Monitor 
resource "google_dns_record_set" "monitor" {
  name = "monitor.${google_dns_managed_zone.dns-w9.dns_name}"
  type = "A"
  ttl  = 300

  managed_zone = google_dns_managed_zone.dns-w9.name

  rrdatas = ["34.133.5.230"]
}

# DNS Record - Dashboard
resource "google_dns_record_set" "dash" {
  name = "dash.${google_dns_managed_zone.dns-w9.dns_name}"
  type = "A"
  ttl  = 300

  managed_zone = google_dns_managed_zone.dns-w9.name

  rrdatas = ["34.133.5.230"]
}