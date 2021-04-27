require 'capybara'
require 'capybara/rspec'
require 'rspec'
require 'pg'

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'app.rb')



Capybara.app = Airbnb


# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|

  # config.before(:each) do
  #   conn = PG.connect(dbname: 'airbnb_test')
  #   conn.exec('TRUNCATE TABLE bookmarks')
  # end #CHANGE TEST DATABASES

  
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups


end
