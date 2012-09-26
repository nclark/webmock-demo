ENV["RAILS_ENV"] ||= 'test'

require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'

Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = 'random'

  config.use_transactional_fixtures = true

  VCR.configure do |c|
    c.cassette_library_dir = 'spec/fixtures/vcr'
    c.hook_into :webmock
    c.configure_rspec_metadata!
    #c.before_http_request do |request, response|
      #request.uri.gsub!(/%2F\d+%2Ffarnsworth.jpg/, '%2F___ID___%2Ffarnsworth.jpg')
    #end
  end
end
