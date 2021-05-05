# Configure the GitHub Provider
provider "github" {
  owner = "${var.github_owner}"
}



# Add a user to the organization
resource "github_membership" "membership_for_user_x" {
  # ...
}


module "myteam" {
  source = "./module/"

  repository = "my-super-repo"
  team = "member"
}
