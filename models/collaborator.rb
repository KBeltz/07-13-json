require_relative "../database_class_methods.rb"
require_relative "../database_instance_methods.rb"

class Collaborator
  extend DatabaseClassMethods
  include DatabaseInstanceMethods


  attr_accessor :name
  attr_reader :id

  # Initializes a new Assignment object
  #
  # id   - Integer id primary key created in the 'assignments' table
  # name - String containing the name of the collaborator
  #
  # Returns an Collaborator object

  def initialize(options = {})

    # Example: {"id" => 1, "name" => "Lisa"}
    @id = options["id"]
    @name = options["name"]

  end
end
