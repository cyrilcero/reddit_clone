#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bin/rails tailwindcss:install

bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate
