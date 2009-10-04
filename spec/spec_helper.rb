# This file is copied to ~/spec when you run 'ruby script/generate rspec'
# from the project root directory.
ENV["RAILS_ENV"] ||= 'test'
require File.dirname(__FILE__) + "/../config/environment" unless defined?(RAILS_ROOT)
require 'spec/autorun'
require 'spec/rails'

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

Spec::Runner.configure do |config|
  # If you're not using ActiveRecord you should remove these
  # lines, delete config/database.yml and disable :active_record
  # in your config/boot.rb
  config.use_transactional_fixtures = true
  config.use_instantiated_fixtures  = false
  config.fixture_path = RAILS_ROOT + '/spec/fixtures/'
end

Webrat.configure do |config|
  config.mode = :rails
  config.open_error_files = false # prevents webrat from opening the browser
end

# empties the database. it is best to use the test database like you would in real life - deleting and creating records - and to be safe we start with an empty database
def empty_database
  Person.destroy_all
end

module PersonTestHelper
  def valid_person_attributes(options = {})
    {
      :first_name => 'Scott',
      :last_name => 'Motte',
      :zip => '90001'
    }.merge(options)
  end
end
