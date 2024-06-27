#!/bin/bash
set -e

# プロジェクトディレクトリに移動
cd /workspace

# 初回起動時に rails new を実行
if [ ! -d /workspace/app ]; then
  rails new . --force --skip-bundle
  bundle install
fi

# Remove a potentially pre-existing server.pid for Rails.
rm -f /rails-container/tmp/pids/server.pid

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"