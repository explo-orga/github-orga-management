resource "github_team" "example" {
  name = "BackEnd"
}

resource "github_team_membership" "example" {
  team_id  = github_team.example.id
  username = data.github_user.example.login
  role     = "maintainer"
}