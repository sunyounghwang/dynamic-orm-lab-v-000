require_relative "../config/environment.rb"
require 'active_support/inflector'

class InteractiveRecord
  def self.table_name
    to_s.downcase.pluralize
  end

  def self.column_names
    DB[:conn].execute("PRAGMA table_info(#{table_name})") 
  end
end
