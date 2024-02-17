#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bin/rails tailwindcss:install
bin/rails tailwindcss:build

bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate
