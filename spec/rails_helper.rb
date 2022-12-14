require 'spec_helper'
require 'devise'
require_relative 'support/controller_macros'
include ActionDispatch::TestProcess

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../config/environment', __dir__)
# Prevent database truncation if the environment is production
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'rspec/rails'

begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  puts e.to_s.strip
  exit 1
end


RSpec.configure do |config|
  config.use_transactional_fixtures = false
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!


  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.include Devise::Test::ControllerHelpers, type: :controller  
  config.include Warden::Test::Helpers

end
