require "pry"
require "sinatra"
require "sinatra/json"
require "sinatra/reloader"
require "HTTParty"
set :bind, '0.0.0.0'

# SQL/Database
require "sqlite3"
require_relative "database_setup.rb"

# Models
require_relative "models/assignment.rb"
require_relative "models/link.rb"
require_relative "models/collaborator.rb"

# Controllers
require_relative "controllers/main.rb"
require_relative "controllers/assignments.rb"
require_relative "controllers/links.rb"
require_relative "controllers/collaborators.rb"
require_relative "controllers/api_controller.rb"
