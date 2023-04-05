set -o errexit

bundle install
yarn install
budnle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate