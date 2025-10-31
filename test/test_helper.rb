ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"
require "bcrypt"

class ActiveSupport::TestCase
  fixtures :all
end
