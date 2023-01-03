resource "google_service_account" "test_sa" {
  project      = var.project_id
  account_id   = "Service Account ID"
  display_name = "Service Account"
}

resource "google_project_iam_member" "project_owner" {
  project = var.project_id
  role    = "roles/owner"
  member  = "serviceAccount:${google_service_account.test_sa.email}"
}