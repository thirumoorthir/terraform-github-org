module "consul" {
  source                 = "./modules/repository"
  name                   = "consul"
  cookbook_team          = github_team.consul.id
  label_validator_config = local.label_validator_config
}

resource "github_team" "consul" {
  name        = "consul"
  description = "consul Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "consul-maintainer-1" {
  team_id  = github_team.consul.id
  username = "damacus"
  role     = "maintainer"
}

