require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'interactive_record.rb'

class Student < InteractiveRecord
  column_names.each { |name| attr_accessor name.to_sym }
end
