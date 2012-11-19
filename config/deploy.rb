require "rvm/capistrano"

set :application, "wulin_demo"
ssh_options[:forward_agent] = true
default_run_options[:pty] = true
set :repository,  "git@github.com:ekohe/wulin_demo.git"
set :rvm_ruby_string, "1.9.3-p0@#{application}"
set :rvm_type, :system
set :scm, :git

role :web, "ekohe.com"
role :app, "ekohe.com"
role :db,  "ekohe.com", :primary => true

set :deploy_to, "/var/www/#{application}"
set :use_sudo, false

task :configure, :roles => :web do
  run "ln -s #{shared_path}/config/database.yml #{current_release}/config/database.yml"
  run "ln -s #{shared_path}/bundler_gems #{current_release}/bundler"
  run "rm -rf #{current_release}/.bundle && ln -s #{shared_path}/dot_bundle #{current_release}/.bundle"
  run "cd #{current_release}; sudo -u www-data sh -c 'source /usr/local/lib/rvm && rvm #{rvm_ruby_string} && bundle install --path bundler'"
end

before 'deploy:restart', :configure
after 'configure', 'deploy:assets:precompile'
after 'deploy:restart', 'deploy:cleanup'
after 'deploy:restart', 'deploy:migrate'

namespace :deploy do
  [:start, :stop, :restart].each do |action|
    task action do
      run "sudo monit -g #{application}_ruby #{action} all"
    end

    task :migrate do
      our_rake 'db:migrate'
    end
  end

  namespace :assets do
    task :precompile do
      our_rake "RAILS_GROUPS=assets assets:precompile"
    end
  end
end

def our_rake(task)
  run "cd #{current_release}; sudo -u www-data sh -c 'source /usr/local/lib/rvm && rvm #{rvm_ruby_string} && RAILS_ENV=production bundle exec rake #{task}'"
end