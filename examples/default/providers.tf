provider "github" {
  base_url         = var.base_url
  max_retries      = var.max_retries
  owner            = var.owner
  read_delay_ms    = var.read_delay_ms
  retry_delay_ms   = var.retry_delay_ms
  retryable_errors = var.retryable_errors
  token            = var.token
  write_delay_ms   = var.write_delay_ms

  dynamic "app_auth" {
    for_each = var.app_auth

    content {
      id              = app_auth.value.id
      installation_id = lookup(app_auth.value, "installation_id", null)
      pem_file        = lookup(app_auth.value, "pem_file", null)
    }
  }
}
