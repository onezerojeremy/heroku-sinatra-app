# You'll need to require these if you
# want to develop while running with ruby.
# The config/rackup.ru requires these as well
# for it's own reasons.
#
# $ ruby heroku-sinatra-app.rb
#
require 'rubygems'
require 'sinatra'
require 'time'
require 'httparty'
require 'json'

configure :production do
  # Configure stuff here you'll want to
  # only be run at Heroku at boot

  # TIP:  You can get you database information
  #       from ENV['DATABASE_URI'] (see /env route below)
end

# Quick test
get '/' do
  "<html>
  <head></head>
  <body>
  Congradulations!
   You're running a Sinatra application on Heroku!
   </body></html>"
end


post '/commit' do
  push = JSON.parse(request.body.read)
  repo = push["repository"]
  repo_name = repo["name"].downcase
  
"yup that did it"  
end

# Test at <appname>.heroku.com

# You can see all your app specific information this way.
# IMPORTANT! This is a very bad thing to do for a production
# application with sensitive information

# get '/env' do
#  ENV.inspect
# end

