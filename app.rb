require "pry"
require "sinatra"
require "sinatra/reloader"

# SQL/Database
require "sqlite3"
require_relative "database_setup.rb"

# Models
require_relative "models/assignment.rb"
require_relative "models/link.rb"
require_relative "models/collaborator.rb"

# Controllers
require_relative "controllers/main.rb"