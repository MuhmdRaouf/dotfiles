#!/usr/bin/env zsh

##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
#""                                GIT SIGNING                                ""#
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
set_git_signing() {
  if [[ $# -ne 2 ]]; then
    echo "Usage: set_git_signing <GPG_Key> <Email>"
    return 1
  fi

  local key="$1"
  local email="$2"

  # Check if Git is installed
  if ! command -v git &>/dev/null; then
    echo "❌ Error: Git is not installed. Please install Git first."
    return 1
  fi

  # Check if inside a Git repository
  if ! git rev-parse --is-inside-work-tree &>/dev/null; then
    echo "❌ Error: This command must be run inside a Git repository."
    return 1
  fi

  # Validate GPG key format (basic check)
  if ! gpg --list-keys "$key" &>/dev/null; then
    echo "❌ Error: Invalid GPG key. Ensure the key exists in GPG."
    return 1
  fi

  # Set Git configuration for the local repository
  git config user.signingkey "$key"
  git config user.email "$email"

  echo "✔ Git signing key and email have been successfully configured for this repository!"
}
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
