require "bundler/setup"
require "date-interval"
require "date"

RSpec.configure do |config|
    # Enable flags like --only-failures and --next-failure
    config.example_status_persistence_file_path = "coverage/rspec"

    config.expect_with :rspec do |c|
        c.syntax = :expect
    end
end
