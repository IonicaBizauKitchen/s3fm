require 'rubygems'
require 'sinatra'
require 'vendor/haml-2.0.9/lib/haml'
 
disable :run
set :environment, :production
set :raise_errors, true
set :views, File.dirname(__FILE__) + '/views'
set :public, File.dirname(__FILE__) + '/public'
set :app_file, __FILE__
 
log = File.new("log/sinatra.log", "a")
STDOUT.reopen(log)
STDERR.reopen(log)
 
require 'radio.rb'
run Sinatra.application