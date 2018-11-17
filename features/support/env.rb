require 'cucumber/rails'
Capybara.default_selector = :css
cb = ENV['CURRENT_BROWSER']
testbrowser = cb ? cb.downcase.to_sym : :chrome
puts "-------------- current browser: #{testbrowser}........."
Capybara.register_driver :selenium do |app|
  if RbConfig::CONFIG['host_os'][/linux/] && testbrowser.to_s.eql?("CHROME".downcase)
    Capybara::Selenium::Driver.new(app, {:browser => :remote, :url => "http://0.0.0.0:3000"})
  else
    if testbrowser.eql?(:chrome)
      Capybara::Selenium::Driver.new(app, :browser => :chrome, :switches => %w[--test-type])
    elsif testbrowser.eql?(:safari)
       Capybara::Selenium::Driver.new(app, :browser => :safari, :switches => %w[--test-type])
    elsif testbrowser.eql?(:internetexplorer)
      Capybara::Selenium::Driver.new(app, :browser => :internetexplorer, :switches => %w[--test-type])
    else
      Capybara::Selenium::Driver.new(app, :browser => testbrowser)
    end
  end
end

ActionController::Base.allow_rescue = false

begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end

Cucumber::Rails::Database.javascript_strategy = :truncation

