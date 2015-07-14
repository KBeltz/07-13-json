require_relative "../database_class_methods.rb"
require_relative "../database_instance_methods.rb"

class Assignment
  extend DatabaseClassMethods
  include DatabaseInstanceMethods


  attr_accessor :name, :description
  attr_reader :id

  # Initializes a new Assignment object
  #
  # id          - Integer id primary key created in the 'assignments' table
  # name        - String containing the name of the assignment
  # description - (optional) String containing a description of the assignment
  #
  # Returns an Assignment object

  def initialize(options = {})
    # Example: {"id" => 1, "name" => "JS Atomics", "description" => "JS mini-assignments"}
    @id = options["id"]
    @name = options["name"]
    @description = options["description"]
  end

  def json_format
    hash = {}
    hash["id"] = self.id
    hash["name"] = self.name
    hash["description"] = self.description
  end
end
