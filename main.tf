#==== Configure GitHub Provider on organization ====
provider "github" {
  token = var.git_token
  owner = "epsi-jvalens-tp-terraform-5mai2021"
}

resource "github_repository" "example" {
  name        = var.nom_repos
  visibility = "public"
}

#======== Ajout d'un utilisateur admin au repos =====

resource "github_repository_collaborator" "a_repo_collaborator" {
  repository = github_repository.example.name
  username   = "skhedim"
  permission = "admin"
}

#======= github_branch_protection ==============
resource "github_branch_protection" "example" {
  repository_id = github_repository.example.name
  pattern          = "main"
  enforce_admins   = true
  allows_deletions = true
}

# ========= users & groups =========

data "github_user" "example" {
  username = "example"
}

resource "github_team" "example" {
  name = "new_team"
}

data "github_team" "example" {
  slug = "new_team"
}

resource "github_team_repository" "example" {
  team_id    = data.github_team.example.id
  repository = github_repository.example.name
  permission = var.permission
}

# ======= Workflow ============






