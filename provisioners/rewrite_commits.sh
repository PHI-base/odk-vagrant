#!/bin/sh

cd /home/vagrant/ontology-development-kit-*/target/phipo

# Rewrite the existing commits to use the correct author
git filter-branch --commit-filter '
  GIT_AUTHOR_NAME="$0";
  GIT_COMMITTER_NAME="$0";
  GIT_AUTHOR_EMAIL="$1";
  GIT_COMMITTER_EMAIL="$1";
  git commit-tree "$@";
' HEAD
