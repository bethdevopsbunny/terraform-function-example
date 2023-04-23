

resource "google_storage_bucket" "default" {
  name     = "${var.project}-function-app"
  location = var.region
  project  = var.project
  uniform_bucket_level_access = false
}