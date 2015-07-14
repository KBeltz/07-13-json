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

    # Example: {"id" => 1, "name" => "JS Atomics", "description" => "JS mini-assigments"}
    @id = options["id"]
    @name = options["name"]
    @description = options["description"]

  end

  # method to validate assignment profiles before they are added to the database
  #
  # name         - String containing the name of the assignment
  # description  - String containing the description of the assignment
  #
  # Returns boolean
  def self.valid?(name, description)
    if name.empty? || description.empty?
      true
    end
  end

  # Join
  #
  # Returns applicable rows of assignments table and links table joined together
  # TODO: Which kind of Join? should it be a join?
  def link_join
    DATABASE.execute("SELECT assignments.name FROM assignments JOIN links ON links.assignment_id = assignments.id WHERE assignments.id = #{id}")
  end

  # Join
  #
  # Returns applicable rows of assignments table and collaborators table joined together
  # TODO: Which kind of Join? should it be a join?
  def collaborator_join
    DATABASE.execute("SELECT assignments.name FROM assignments JOIN collaborators ON collaborators.assignment_id = assignments.id WHERE assignment.id = #{id}")
  end

  # Bridge table for assignments and collaborators
  #
  # Returns ??
  def link_bridge
    DATABASE.execute("INSERT INTO assignments_links (assignment_id, link_id) VALUES (#{values_for_sql});")
  end

  # Bridge table for assignments and collaborators
  #
  # Returns ??
  def collaborator_bridge
    DATABASE.execute("INSERT INTO assignments_collaborators (assignment_id, collaborator_id) VALUES (#{values_for_sql});")
  end

end
