Capybara.register_driver :javascript do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end
