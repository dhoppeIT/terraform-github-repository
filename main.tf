resource "github_repository" "this" {
  name = var.name

  allow_auto_merge                        = var.allow_auto_merge
  allow_merge_commit                      = var.allow_merge_commit
  allow_rebase_merge                      = var.allow_rebase_merge
  allow_squash_merge                      = var.allow_squash_merge
  allow_update_branch                     = var.allow_update_branch
  archive_on_destroy                      = var.archive_on_destroy
  archived                                = var.archived
  auto_init                               = var.auto_init
  delete_branch_on_merge                  = var.delete_branch_on_merge
  description                             = var.description
  gitignore_template                      = var.gitignore_template
  has_discussions                         = var.has_discussions
  has_issues                              = var.has_issues
  has_projects                            = var.has_projects
  has_wiki                                = var.has_wiki
  homepage_url                            = var.homepage_url
  ignore_vulnerability_alerts_during_read = var.ignore_vulnerability_alerts_during_read
  is_template                             = var.is_template
  license_template                        = var.license_template
  merge_commit_message                    = var.merge_commit_message
  merge_commit_title                      = var.merge_commit_title
  squash_merge_commit_message             = var.squash_merge_commit_message
  squash_merge_commit_title               = var.squash_merge_commit_title
  topics                                  = var.topics
  visibility                              = var.visibility
  vulnerability_alerts                    = var.vulnerability_alerts
  web_commit_signoff_required             = var.web_commit_signoff_required

  dynamic "pages" {
    for_each = var.pages

    content {
      build_type = lookup(pages.value, "build_type", null)
      cname      = lookup(pages.value, "cname", null)

      dynamic "source" {
        for_each = lookup(pages.value, "branch", [])

        content {
          branch = source.value.branch
          path   = lookup(source.value, "path", "/")
        }
      }
    }
  }

  dynamic "security_and_analysis" {
    for_each = var.security_and_analysis

    content {
      dynamic "advanced_security" {
        for_each = lookup(security_and_analysis.value, "advanced_security", [])

        content {
          status = advanced_security.value.status
        }
      }

      dynamic "secret_scanning" {
        for_each = lookup(security_and_analysis.value, "secret_scanning", [])

        content {
          status = secret_scanning.value.status
        }
      }

      dynamic "secret_scanning_push_protection" {
        for_each = lookup(security_and_analysis.value, "secret_scanning_push_protection", [])

        content {
          status = secret_scanning_push_protection.value.status
        }
      }
    }
  }

  dynamic "template" {
    for_each = var.template

    content {
      include_all_branches = lookup(template.value, "include_all_branches", false)
      owner                = lookup(template.value, "owner", null)
      repository           = lookup(template.value, "repository", null)
    }
  }
}
