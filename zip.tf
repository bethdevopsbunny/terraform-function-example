data "archive_file" "default" {
  type        = "zip"
  output_path = "app.zip"
  source_dir  = "app"
}

resource "google_storage_bucket_object" "default" {
  name         = "app.zip"
  bucket       = google_storage_bucket.default.name
  source       = data.archive_file.default.output_path
  content_type = "application/zip"
}
