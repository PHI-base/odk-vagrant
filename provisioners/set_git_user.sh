#!/bin/sh

cd /home/vagrant/ontology-starter-kit-*/target/phipo

git config user.name "$0"
git config user.email "$1"

# Rewrite the existing commits to use the correct author
git filter-branch --commit-filter '
  GIT_AUTHOR_NAME="$0";
  GIT_COMMITTER_NAME="$0";
  GIT_AUTHOR_EMAIL="$1";
  GIT_COMMITTER_EMAIL="$1";
  git commit-tree "$@";
' HEAD
