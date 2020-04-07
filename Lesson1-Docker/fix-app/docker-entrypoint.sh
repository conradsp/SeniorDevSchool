#!/bin/bash
set -e

if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

until PGPASSWORD=fix-app!1 psql -h "postgres" -U "fix-app" -d "fix-app_prod" -c '\q'; do
  sleep 2s
done

echo "Version: $(git rev-parse --short HEAD)" > public/version.txt

. ./setEnv.sh prod

rails db:migrate
rails db:seed
rails assets:precompile RAILS_ENV=production

rails server -e production
