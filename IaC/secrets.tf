data "google_secret_manager_secret_version" "wp-user" {
  secret  = "projects/761234852930/secrets/wp_user"
}

data "google_secret_manager_secret_version" "wp-pass" {
  secret  = "projects/761234852930/secrets/wp_pass"
}