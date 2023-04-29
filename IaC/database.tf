
# Instance
resource "google_sql_database_instance" "wordpress-db" {
  name             = "wordpress-db"
  database_version = "MYSQL_8_0"
  region           = "us-central1"

  settings {
    # Second-generation instance tiers are based on the machine
    # type. See argument reference below.
    tier = "db-f1-micro"
  }
}

# Database
resource "google_sql_database" "wp-db" {
  name     = "wp-db"
  instance = google_sql_database_instance.wordpress-db.name
}

# User
resource "google_sql_user" "wp-users" {
  name     = data.google_secret_manager_secret_version.wp-user.secret_data
  instance = google_sql_database_instance.wordpress-db.name
  password = data.google_secret_manager_secret_version.wp-pass.secret_data
}
