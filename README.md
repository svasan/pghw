# README

This README would normally document whatever steps are necessary to get the
application up and running.

1. Install ruby. (To be safe, install ruby 2.4.x)
   If you have multiple ruby versions, the simplest might be to install rbenv
   Follow instructions here : https://github.com/rbenv/rbenv

2. Install rails gems
   gem install rails -v 5.1.4

3. Check out this project
   git clone https://github.com/svasan/pghw

4. cd pghw
5. bundle install --without production
6. rails server


(server starts listening on port 3000 in dev mode)


To test with curl commands:

# Get
curl -H 'Accept: application/html' localhost:3000
curl -H 'Accept: application/json' localhost:3000


# Post
curl -d '' -H 'Accept: application/html' localhost:3000
curl -d '' -H 'Accept: application/json' localhost:3000


The debug logs go into log/development.log. The log_level is debug by default.
To change that add config.log_level=<level> in config/enviroments/development.rb
(where level is one of :debug, :info, :warn, :error, :fatal)


Tests can be run as

$ rails test.