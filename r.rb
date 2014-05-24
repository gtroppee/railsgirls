rake db:drop
rake db:create
rake db:migrate
rake db:seed
rake assets:clobber && RAILS_ENV=production bundle exec rake assets:precompile