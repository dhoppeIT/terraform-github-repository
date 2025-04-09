output "full_name" {
  description = "A string of the form 'orgname/reponame'"
  value       = github_repository.this.full_name
}

output "git_clone_url" {
  description = "URL that can be provided to git clone to clone the repository anonymously via the git protocol"
  value       = github_repository.this.git_clone_url
}

output "html_url" {
  description = "URL to the repository on the web"
  value       = github_repository.this.html_url
}

output "http_clone_url" {
  description = "URL that can be provided to git clone to clone the repository via HTTPS"
  value       = github_repository.this.http_clone_url
}

output "node_id" {
  description = "GraphQL global node id for use with v4 API"
  value       = github_repository.this.node_id
}

output "pages" {
  description = "The block consisting of the repository's GitHub Pages configuration"
  value       = github_repository.this.pages
}

output "primary_language" {
  description = "The primary language used in the repository"
  value       = github_repository.this.primary_language
}

output "repo_id" {
  description = "GitHub ID for the repository"
  value       = github_repository.this.repo_id
}

output "ssh_clone_url" {
  description = "URL that can be provided to git clone to clone the repository via SSH"
  value       = github_repository.this.ssh_clone_url
}

output "svn_url" {
  description = "URL that can be provided to svn checkout to check out the repository via GitHub's Subversion protocol emulation"
  value       = github_repository.this.svn_url
}
