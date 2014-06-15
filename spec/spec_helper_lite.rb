if ENV["COVERAGE"]
  require 'simplecov'
  SimpleCov.start
end

ENV["RAILS_ENV"] ||= 'test'

$LOAD_PATH.unshift File.expand_path('../lib/accountability', __FILE__)

RSpec.configure do |config|
  config.filter_run focus: true
  config.mock_with :rspec
  config.order = 'random'
  config.run_all_when_everything_filtered = true
  config.raise_errors_for_deprecations!
end

