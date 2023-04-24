resource "google_cloudfunctions_function" "default" {
  name        = local.function_name
  description = "a function created with terraform"
  runtime     = "ruby30"
  project     = var.project
  region      = var.region

  available_memory_mb   = 128
  source_archive_bucket = google_storage_bucket.default.name
  source_archive_object = google_storage_bucket_object.default.name

  service_account_email = google_service_account.default.email
  trigger_http          = true
  entry_point           = "test_function"
}