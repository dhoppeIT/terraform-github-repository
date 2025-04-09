variable "name" {
  type        = string
  description = "The name of the repository"
}

variable "allow_auto_merge" {
  type        = bool
  default     = false
  description = "Set to true to allow auto-merging pull requests on the repository"
}

variable "allow_merge_commit" {
  type        = bool
  default     = true
  description = "Set to false to disable merge commits on the repository"
}

variable "allow_rebase_merge" {
  type        = bool
  default     = true
  description = "Set to false to disable rebase merges on the repository"
}

variable "allow_squash_merge" {
  type        = bool
  default     = true
  description = "Set to false to disable squash merges on the repository"
}

variable "allow_update_branch" {
  type        = bool
  default     = false
  description = "Set to true to always suggest updating pull request branches"
}

variable "archive_on_destroy" {
  type        = bool
  default     = false
  description = "Set to true to archive the repository instead of deleting on destroy"
}

variable "archived" {
  type        = bool
  default     = false
  description = "Specifies if the repository should be archived"
}

variable "auto_init" {
  type        = bool
  default     = false
  description = "Set to true to produce an initial commit in the repository"
}

variable "delete_branch_on_merge" {
  type        = bool
  default     = false
  description = "Automatically delete head branch after a pull request is merged"
}

variable "description" {
  type        = string
  default     = null
  description = "A description of the repository"
}

variable "gitignore_template" {
  type        = string
  default     = null
  description = "Use the name of the template without the extension"
}

variable "has_discussions" {
  type        = bool
  default     = false
  description = "Set to true to enable GitHub Discussions on the repository"
}

variable "has_issues" {
  type        = bool
  default     = true
  description = "Set to true to enable the GitHub Issues features on the repository"
}

variable "has_projects" {
  type        = bool
  default     = true
  description = "Set to true to enable the GitHub Projects features on the repository"
}

variable "has_wiki" {
  type        = bool
  default     = true
  description = "Set to true to enable the GitHub Wiki features on the repository"
}

variable "homepage_url" {
  type        = string
  default     = null
  description = "URL of a page describing the project"
}

variable "ignore_vulnerability_alerts_during_read" {
  type        = bool
  default     = false
  description = "Set to true to not call the vulnerability alerts endpoint"
}

variable "is_template" {
  type        = bool
  default     = false
  description = "Set to true to tell GitHub that this is a template repository"
}

variable "license_template" {
  type        = string
  default     = null
  description = "Use the name of the template without the extension"
}

variable "merge_commit_message" {
  type        = string
  default     = "PR_TITLE"
  description = "Can be PR_BODY, PR_TITLE, or BLANK for a default merge commit message"
}

variable "merge_commit_title" {
  type        = string
  default     = "MERGE_MESSAGE"
  description = "Can be PR_TITLE or MERGE_MESSAGE for a default merge commit title"
}

variable "pages" {
  type        = map(string)
  default     = {}
  description = "The repository's GitHub Pages configuration"
}

variable "security_and_analysis" {
  type        = map(string)
  default     = {}
  description = "The repository's security and analysis configuration"
}

variable "squash_merge_commit_message" {
  type        = string
  default     = "COMMIT_MESSAGES"
  description = "Can be PR_BODY, COMMIT_MESSAGES, or BLANK for a default squash merge commit message"
}

variable "squash_merge_commit_title" {
  type        = string
  default     = "COMMIT_OR_PR_TITLE"
  description = "Can be PR_TITLE or COMMIT_OR_PR_TITLE for a default squash merge commit title"
}

variable "template" {
  type        = map(string)
  default     = {}
  description = "Use a template repository to create this resource"
}

variable "topics" {
  type        = list(string)
  default     = []
  description = "The list of topics of the repository"
}

variable "visibility" {
  type        = string
  default     = "public"
  description = "Can be public or private"
}

variable "vulnerability_alerts" {
  type        = bool
  default     = false
  description = "Set to true to enable security alerts for vulnerable dependencies"
}

variable "web_commit_signoff_required" {
  type        = bool
  default     = false
  description = "Require contributors to sign off on web-based commits"
}
