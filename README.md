# Terraform Module - AWS OIDC GitHub

Terraform module to create an AWS OIDC identity provider for GitHub.

## Usage

```terraform
module "oidc_github" {
  source = "git::https://github.com/vrs-factory/terraform-aws-oidc-github"

  url        = "https://token.actions.githubusercontent.com"
  client_ids = ["sts.amazonaws.com"]
  extra_thumbprints = [
    "6938fd4d98bab03faadb97b34396831e3780aea1"
  ]

  tags = {
    Project = local.project
  }
}
```
