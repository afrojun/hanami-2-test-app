require "database_cleaner"
require_relative "helpers"

DatabaseCleaner.allow_remote_database_url = true
DatabaseCleaner[:sequel, db: Test::DB::Helpers.db].strategy = :transaction

RSpec.configure do |config|
  config.before :suite do
    DatabaseCleaner.clean_with :truncation
  end

  config.prepend_before :each, :db do |example|
    strategy = example.metadata[:js] ? :truncation : :transaction
    DatabaseCleaner.strategy = strategy

    DatabaseCleaner.start
  end

  config.append_after :each, :db do
    DatabaseCleaner.clean
  end
end
