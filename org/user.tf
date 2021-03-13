data "github_user" "example" {
  username = "dcuenot-sfdc"
}

resource "github_membership" "example" {
  username = data.github_user.example.login
  role     = "member"
}