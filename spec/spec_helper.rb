require "./lib/line"
require "./lib/point"

RSpec.configure do |config|
  config.expect_with  :rspec do |expectation|
    expectation.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end
