resource "newrelic_one_dashboard" "meital-dash-bca" {
  account_id = 3567385
  name       = "meital-dash"
  page {
    name = "meital-dash"
  }
  permissions = "public_read_write"
}




resource "newrelic_workload" "prod-automation-a9a" {
  account_id        = 3567385
  name              = "prod-automation"
  scope_account_ids = [3567385]
}




resource "newrelic_one_dashboard" "Automation-dash-e94" {
  account_id = 3567385
  name       = "Automation-dash"
  page {
    name = "Automation-dash"
  }
  permissions = "public_read_write"
}




resource "newrelic_api_access_key" "automation-stag-c25" {
  account_id = 3567385
  key_type   = "USER"
  name       = "automation-stag"
  user_id    = 1001953131
}




resource "newrelic_entity_tags" "MzU2NzM4NXxWSVp8REFTSEJPQVJEfGRhOjIzNjUyODg-7ca" {
  guid = "MzU2NzM4NXxWSVp8REFTSEJPQVJEfGRhOjIzNjUyODg"
}




resource "newrelic_api_access_key" "LicenseKeyforAccount3567385-c69" {
  account_id  = 3567385
  ingest_type = "LICENSE"
  key_type    = "INGEST"
  name        = "License Key for Account 3567385"
  notes       = "Original account license key"
}




resource "newrelic_entity_tags" "MzU2NzM4NXxWSVp8REFTSEJPQVJEfGRhOjE2NjUwOTg-6a8" {
  guid = "MzU2NzM4NXxWSVp8REFTSEJPQVJEfGRhOjE2NjUwOTg"
}




resource "newrelic_api_access_key" "InstallerAPIKey-18d" {
  account_id = 3567385
  key_type   = "USER"
  name       = "Installer API Key"
  user_id    = 1001953131
}




resource "newrelic_api_access_key" "BrowserKeyforAccount3567385-424" {
  account_id  = 3567385
  ingest_type = "BROWSER"
  key_type    = "INGEST"
  name        = "Browser Key for Account 3567385"
  notes       = "Original account browser key"
}

