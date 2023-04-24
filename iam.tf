resource "google_cloudfunctions_function_iam_member" "default" {
  project        = google_cloudfunctions_function.default.project
  region         = google_cloudfunctions_function.default.region
  cloud_function = google_cloudfunctions_function.default.name

  role   = "roles/cloudfunctions.invoker"
  member = "allUsers"
}