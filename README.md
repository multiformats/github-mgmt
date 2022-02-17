# GitHub Management via Terraform: multiformats

This repository is responsible for managing GitHub configuration of `multiformats` organisation as code with Terraform. It was created from [github-mgmt-template](https://github.com/protocol/github-mgmt-template) and it will receive updates from that repository.

## Managed resources

- `membership`: `multiformats` members
  - `role`
- `repository`: repositories owned by `multiformats`
- `repository_collaborator`: direct user collaborators of a repository per repository
  - `permission`
- `team`: teams owned by `multiformats`
- `team_membership`: team members per team
  - `role`
- `team_repository`: repositories a team has access to per team
  - `permission`

## Notes

### Branch protection rules

Because the repository is currently private, it is impossible to enforce branch protection rules. Even though possible, do not push directly to `master` - create a PR instead.

### Merges

Because we don't have merge queue functionality enabled for the repository yet, after a merge, wait for the `Apply` workflow to complete. After that, update outstanding PRs so that their plans are recreated.
