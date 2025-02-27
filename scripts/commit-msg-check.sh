#!/usr/bin/bash
# This hook helps to enforce a commit message format convention
#
# It can be very frustrating when many commits are squashed for a final PR
# and the latter gets rejected due to incorrect commit message formatting
#
# Another reason for this enforcement is to provide valid input data for the
# automatic changelog generator which relies on the keywords found in the regex below

function log {
  # shellcheck disable=2317
  printf "[ERROR] %s\n" "${@}"
}

commit_msg="${1}"
regex="^(bugfix|doc|docs|chore|feat|feature|fix|hotfix|perf|refactor|remove|security|style|test)(\([a-zA-Z0-9_-]+\))?!?:[[:space:]]+[[:graph:]]+([[:graph:]]|[[:space:]])*$"

echo "[INFO] Commit message: ${commit_msg}"

if ! [[ "${commit_msg}" =~ ${regex} ]]; then
  log "Invalid commit message format please consult CONTRIBUTING for more details on how to write appropriate commit messages."
  exit 1
else
  echo "[SUCCESS] Valid commit message format!"
fi
