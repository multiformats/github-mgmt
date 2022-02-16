resource "github_membership" "this" {
  lifecycle {
    # @resources.membership.ignore_changes
    ignore_changes = [
      etag,
      id,
      # role
    ]
  }
}

resource "github_repository_collaborator" "this" {
  lifecycle {
    # @resources.repository_collaborator.ignore_changes
    ignore_changes = [
      id,
      invitation_id,
      # permission,
      permission_diff_suppression
    ]
  }
}


resource "github_team_repository" "this" {
  lifecycle {
    # @resources.team_repository.ignore_changes
    ignore_changes = [
      etag,
      id,
      # permission
    ]
  }
}

resource "github_team_membership" "this" {
  lifecycle {
    # @resources.team_membership.ignore_changes
    ignore_changes = [
      etag,
      id,
      # role
    ]
  }
}
