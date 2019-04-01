require 'bundler/setup'
Bundler.require

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: "db/development.sqlite"
)

ActiveRecord::Base.logger = Logger.new(STDOUT)

require_all 'app'
<<<<<<< HEAD
  # require_all is a gem in the Gemfile; allows us to require all files in a folder at once
=======


>>>>>>> d197237f9fbf6154a810d7e9272869cc0d9a460e
