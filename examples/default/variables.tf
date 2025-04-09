variable "app_auth" {
  type        = map(any)
  default     = {}
  description = "Configuration block to use GitHub App installation token"
}

variable "base_url" {
  type        = string
  default     = null
  description = "This is the target GitHub base API endpoint"
}

variable "max_retries" {
  type        = number
  default     = 3
  description = "Number of times to retry a request after receiving an error status code"
}

variable "owner" {
  type        = string
  default     = null
  description = "This is the target GitHub organization or individual user account to manage"
}

variable "read_delay_ms" {
  type        = number
  default     = 0
  description = "The number of milliseconds to sleep in between non-write operations in order to satisfy the GitHub API rate limits"
}

variable "retry_delay_ms" {
  type        = number
  default     = 1000
  description = "Amount of time in milliseconds to sleep in between requests to GitHub API after an error response"
}

variable "retryable_errors" {
  type = list(number)
  default = [
    500,
    502,
    503,
    504
  ]
  description = "Allow the provider to retry after receiving an error status code, the max_retries should be set for this to work"
}

variable "token" {
  type        = string
  default     = null
  description = "A GitHub OAuth / Personal Access Token"
}

variable "write_delay_ms" {
  type        = number
  default     = 1000
  description = "The number of milliseconds to sleep in between write operations in order to satisfy the GitHub API rate limits"
}
