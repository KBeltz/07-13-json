require_relative "../database_class_methods.rb"
require_relative "../database_instance_methods.rb"

class Link
  extend DatabaseClassMethods
  include DatabaseInstanceMethods


  attr_accessor :url
  attr_reader :id

  # Initializes a new Assignment object
  #
  # id  - Integer id primary key created in the 'links' table
  # url - String containing the name of the link
  #
  # Returns an Link object

  def initialize(options = {})

    # Example: {"id" => 1, "url" => "www.github.com"}
    @id = options["id"]
    @url = options["url"]

  end

  # method to validate link profiles before they are added to the database
  #
  # url - String containing a url
  #
  # Returns boolean
  def self.valid?(url)
    if url.empty?
      true
    end
  end

end
