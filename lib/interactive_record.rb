require_relative "../config/environment.rb"
require 'active_support/inflector'

class InteractiveRecord
  def self.table_name
    to_s.downcase.pluralize
  end

  def self.column_names
    table_info = DB[:conn].execute("PRAGMA table_info(#{table_name})")
    table_info.map { |column_hash| column_hash["name"]  }
  end
end
