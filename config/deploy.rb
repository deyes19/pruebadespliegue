# config valid for current version and patch releases of Capistrano
lock "~> 3.17.1"

server '44.210.112.191', port:22, roles: [:web, :app, :db], primary: true

set :application, "pruebadespliegue"

set :repo_url, "git@github.com:deyes19/pruebadespliegue.git"

set :branch, :main

set :user, 'web'

set :puma_threads, [4, 16]

set :puma_workers, 0

set :pty, true

set :use_sudo,  false

set :stage, :production

set :rvm_map_bins, %w{gem rake ruby rails bundle}

set :deploy_via, :remote_cache

set :deploy_to, "/home/#{fetch(:user)}/apps/#{fetch(:application)}"

set :puma_bind, "unix://#{shared_path}/tmp/sockets/#{fetch(:application)}-puma.sock"

set :puma_state, "#{shared_path}/tmp/pids/puma.state"

set :puma_pid, "#{shared_path}/tp/pids/puma.pid"

set :puma_access_log, "#{release_path}/log/puma.access.log"

set :puma_error_log, "#{release_path}/log/puma.error.log"

set :ssh_options, {forward_agent: true, user: fetch(:user), keys: %w(~/.ssh/id_rsa.pub)}

set :puma_preload_app, true

set :puma_worker_timeout, nil

set :puma_init_active_record, true
 