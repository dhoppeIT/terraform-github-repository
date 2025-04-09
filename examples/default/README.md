# Example

The configuration in this directory creates:

* github_repository

## Usage

To run this example, you need to execute the following commands:

```shell
terraform init
terraform plan
terraform apply
```

:warning: This example may create resources that cost money. Execute the
command `terraform destroy` when the resources are no longer needed.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 6.6 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_github_repository"></a> [github\_repository](#module\_github\_repository) | ../../ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_auth"></a> [app\_auth](#input\_app\_auth) | Configuration block to use GitHub App installation token | `map(any)` | `{}` | no |
| <a name="input_base_url"></a> [base\_url](#input\_base\_url) | This is the target GitHub base API endpoint | `string` | `null` | no |
| <a name="input_max_retries"></a> [max\_retries](#input\_max\_retries) | Number of times to retry a request after receiving an error status code | `number` | `3` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | This is the target GitHub organization or individual user account to manage | `string` | `null` | no |
| <a name="input_read_delay_ms"></a> [read\_delay\_ms](#input\_read\_delay\_ms) | The number of milliseconds to sleep in between non-write operations in order to satisfy the GitHub API rate limits | `number` | `0` | no |
| <a name="input_retry_delay_ms"></a> [retry\_delay\_ms](#input\_retry\_delay\_ms) | Amount of time in milliseconds to sleep in between requests to GitHub API after an error response | `number` | `1000` | no |
| <a name="input_retryable_errors"></a> [retryable\_errors](#input\_retryable\_errors) | Allow the provider to retry after receiving an error status code, the max\_retries should be set for this to work | `list(number)` | ```[ 500, 502, 503, 504 ]``` | no |
| <a name="input_token"></a> [token](#input\_token) | A GitHub OAuth / Personal Access Token | `string` | `null` | no |
| <a name="input_write_delay_ms"></a> [write\_delay\_ms](#input\_write\_delay\_ms) | The number of milliseconds to sleep in between write operations in order to satisfy the GitHub API rate limits | `number` | `1000` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_full_name"></a> [full\_name](#output\_full\_name) | A string of the form 'orgname/reponame' |
| <a name="output_git_clone_url"></a> [git\_clone\_url](#output\_git\_clone\_url) | URL that can be provided to git clone to clone the repository anonymously via the git protocol |
| <a name="output_html_url"></a> [html\_url](#output\_html\_url) | URL to the repository on the web |
| <a name="output_http_clone_url"></a> [http\_clone\_url](#output\_http\_clone\_url) | URL that can be provided to git clone to clone the repository via HTTPS |
| <a name="output_node_id"></a> [node\_id](#output\_node\_id) | GraphQL global node id for use with v4 API |
| <a name="output_pages"></a> [pages](#output\_pages) | The block consisting of the repository's GitHub Pages configuration |
| <a name="output_primary_language"></a> [primary\_language](#output\_primary\_language) | The primary language used in the repository |
| <a name="output_repo_id"></a> [repo\_id](#output\_repo\_id) | GitHub ID for the repository |
| <a name="output_ssh_clone_url"></a> [ssh\_clone\_url](#output\_ssh\_clone\_url) | URL that can be provided to git clone to clone the repository via SSH |
| <a name="output_svn_url"></a> [svn\_url](#output\_svn\_url) | URL that can be provided to svn checkout to check out the repository via GitHub's Subversion protocol emulation |
<!-- END_TF_DOCS -->
