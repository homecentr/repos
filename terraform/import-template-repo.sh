#!/usr/bin/env ash

terraform import github_repository.template_repo[\"$1\"] "$2"