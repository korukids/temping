require 'bundler/setup'
require 'temping'

RSpec.configure do |config|
  config.before(:suite) do
    `createdb -E UTF8 -T template0 temping_test`
    ActiveRecord::Base.establish_connection(
      database: 'temping_test',
      adapter: 'postgresql'
    )
  end

  config.after(:suite) do
    ActiveRecord::Base.remove_connection
    `dropdb temping_test`
  end
end
