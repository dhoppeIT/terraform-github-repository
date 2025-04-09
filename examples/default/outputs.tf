output "full_name" {
  description = "A string of the form 'orgname/reponame'"
  value       = module.github_repository.full_name
}

output "git_clone_url" {
  description = "URL that can be provided to git clone to clone the repository anonymously via the git protocol"
  value       = module.github_repository.git_clone_url
}

output "html_url" {
  description = "URL to the repository on the web"
  value       = module.github_repository.html_url
}

output "http_clone_url" {
  description = "URL that can be provided to git clone to clone the repository via HTTPS"
  value       = module.github_repository.http_clone_url
}

output "node_id" {
  description = "GraphQL global node id for use with v4 API"
  value       = module.github_repository.node_id
}

output "pages" {
  description = "The block consisting of the repository's GitHub Pages configuration"
  value       = module.github_repository.pages
}

output "primary_language" {
  description = "The primary language used in the repository"
  value       = module.github_repository.primary_language
}

output "repo_id" {
  description = "GitHub ID for the repository"
  value       = module.github_repository.repo_id
}

output "ssh_clone_url" {
  description = "URL that can be provided to git clone to clone the repository via SSH"
  value       = module.github_repository.ssh_clone_url
}

output "svn_url" {
  description = "URL that can be provided to svn checkout to check out the repository via GitHub's Subversion protocol emulation"
  value       = module.github_repository.svn_url
}
