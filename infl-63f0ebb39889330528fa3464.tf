resource "okta_app_oauth" "oidc_client-abe" {
  app_links_json      = jsonencode({
  "oidc_client_link": true
})
  app_settings_json   = jsonencode({})
  implicit_assignment = false
  label               = "Firefly-social-okta"
  status              = "INACTIVE"
  user_name_template  = "$${source.login}"
}




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




resource "okta_app_oauth" "oidc_client-e95" {
  app_links_json      = jsonencode({
  "oidc_client_link": true
})
  app_settings_json   = jsonencode({})
  implicit_assignment = false
  label               = "Okat-social-connection"
  status              = "INACTIVE"
  user_name_template  = "$${source.login}"
}




resource "okta_app_oauth" "oidc_client-220" {
  app_links_json      = jsonencode({
  "oidc_client_link": true
})
  app_settings_json   = jsonencode({})
  implicit_assignment = false
  label               = "Firefly"
  status              = "INACTIVE"
  user_name_template  = "$${source.login}"
}




resource "okta_app_oauth" "okta_enduser-629" {
  app_settings_json   = jsonencode({})
  hide_ios            = false
  hide_web            = false
  implicit_assignment = false
  label               = "Okta Dashboard"
  user_name_template  = "$${source.login}"
}




resource "okta_app_oauth" "okta_browser_plugin-307" {
  app_settings_json   = jsonencode({})
  hide_ios            = false
  hide_web            = false
  implicit_assignment = false
  label               = "Okta Browser Plugin"
  user_name_template  = "$${source.login}"
}




resource "okta_app_oauth" "saasure-d50" {
  app_links_json      = jsonencode({
  "admin": true
})
  app_settings_json   = jsonencode({})
  hide_ios            = false
  hide_web            = false
  implicit_assignment = false
  label               = "Okta Admin Console"
  user_name_template  = "$${source.login}"
  users {
    id = "00u3ew0s22MZGzTXi5d7"
  }
  users {
    id = "00u3js9xp1CDf3bPs5d7"
  }
}




resource "okta_app_group_assignment" "_00g3evwbd4pyEhx0G5d7-c9c" {
  app_id   = "0oa3fgnutfJuUAiCc5d7"
  group_id = "00g3evwbd4pyEhx0G5d7"
  profile  = jsonencode({})
}

