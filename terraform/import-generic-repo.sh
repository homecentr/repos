#!/usr/bin/env ash

terraform import github_repository.generic_repo[\"$1\"] "$2"
terraform import github_branch_protection.generic_repo[\"$1\"] "$2:master"

terraform import github_issue_label.bug[\"$1\"] "$2:bug"
terraform import github_issue_label.enhancement[\"$1\"] "$2:enhancement"
terraform import github_issue_label.duplicate[\"$1\"] "$2:duplicate"
terraform import github_issue_label.question[\"$1\"] "$2:question"
terraform import github_issue_label.dependencies[\"$1\"] "$2:dependencies"
terraform import github_issue_label.wontfix[\"$1\"] "$2:wontfix"
terraform import github_issue_label.released[\"$1\"] "$2:released"