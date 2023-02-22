resource "okta_app_secure_password_store" "auth0-7d1" {
  app_links_json      = jsonencode({
  "auth0_link": true
})
  auto_submit_toolbar = true
  label               = "Auth0"
  password_field      = ""
  url                 = ""
  username_field      = ""
}

