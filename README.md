# Install
1. Install ruby. (To be safe, install ruby 2.4.2)
   If you have other ruby versions, the simplest might be to install rbenv.
   Follow instructions here: https://github.com/rbenv/rbenv.
   Set your local/global enviroment to ruby 2.4.2

2. Install rails gems.
   - gem install rails -v 5.1.4

3. Check out this project
   - git clone https://github.com/svasan/pghw

4. cd pghw
5. bundle install --without production
6. rails server


(server starts listening on port 3000 in dev mode)


# Curl Get Commands

```
curl -H 'Accept: application/html' localhost:3000

curl -H 'Accept: application/json' localhost:3000
```

# Curl Post Commands

```
curl -d '' -H 'Accept: application/html' localhost:3000

curl -d '' -H 'Accept: application/json' localhost:3000
```

# Logging

The debug logs go into log/development.log.

The log_level is debug by default. To change that add config.log_level=<level> in config/enviroments/development.rb
(where level is one of :debug, :info, :warn, :error, :fatal).

The server has to be restarted after the log level is changed.


# Tests

Tests can be run as
```
$ rails test.
```
