
resource "google_cloudfunctions_function" "default" {
  name        = "terraform-function-example"
  description = "a function created with terraform"
  runtime     = "ruby30"

  available_memory_mb   = 128
  source_archive_bucket = google_storage_bucket.bucket.name
  source_archive_object = google_storage_bucket_object.archive.name
  trigger_http          = true
  entry_point           = "test_function"
}

# IAM entry for all users to invoke the function
resource "google_cloudfunctions_function_iam_member" "default" {
  project        = google_cloudfunctions_function.function.project
  region         = google_cloudfunctions_function.function.region
  cloud_function = google_cloudfunctions_function.function.name

  role   = "roles/cloudfunctions.invoker"
  member = "allUsers"
}