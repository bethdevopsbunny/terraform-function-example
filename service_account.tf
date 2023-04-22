
resource "google_service_account" "default" {
  project      = var.project
  account_id   = "${local.function_name}-sa"
  display_name = "${local.function_name}-sa"
  description  = "service account for running ${local.function_name} function"
}