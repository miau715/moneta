namespace :dev do
  desc "Rebuild system"
  task :build => [ "tmp:clear", "log:clear", "db:drop", "db:create", "db:migrate" ]
  task :rebuild => [ "tmp:clear", "log:clear", "db:drop", "db:create", "db:migrate", "dev:build", "db:seed" ]
end