#!/bin/bash
# Build the site locally into a scratch directory to verify a change.
# Usage: scripts/local-build.sh <output-dir>
#
# The github-pages gem calls the GitHub API for `site.github.*`, which is
# blocked in sandboxed sessions, so this builds from a temporary copy in which
# `site.github.url` is replaced by `site.url`. The repository is not modified.
set -euo pipefail
out="${1:?usage: scripts/local-build.sh <output-dir>}"
mkdir -p "$out"
out="$(cd "$out" && pwd)"
repo="$(cd "$(dirname "$0")/.." && pwd)"
src="$(mktemp -d)"
trap 'rm -rf "$src"' EXIT
export LANG=C.UTF-8 LC_ALL=C.UTF-8

cd "$repo"
git ls-files -co --exclude-standard | tar cf - -T - | tar xf - -C "$src"
[ -f Gemfile.lock ] && cp Gemfile.lock "$src/"
cd "$src"
sed -i 's/site\.github\.url/site.url/g' _includes/base_path _includes/seo.html
bundle exec ruby "$(bundle exec gem contents jekyll | grep -E '/exe/jekyll$')" build -d "$out"
