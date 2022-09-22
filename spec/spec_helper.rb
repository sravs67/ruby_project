require 'serverspec'
require 'net/ssh'
require 'dotenv'
Dotenv.load

set :backend, :ssh

host = ENV['TARGET_HOST']
# host = 'localhost'
# options = Net::SSH::Config.for(host).merge(user: ENV['LOGIN_USERNAME']).merge(port: ENV['PORT']).merge(password: ENV['PASS_WORD'])

options = Net::SSH::Config.for(host).merge(user: 'sra').merge(password: 'SSS')

# options[:user] ||= Etc.getlogin

# set :host,        options[:host_name] || host
# set :ssh_options, options
# set :sudo_password, ENV['PASS_WORD']

set :host,        host
set :ssh_options, options
set :sudo_password, 'SSS'
