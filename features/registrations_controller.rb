Given(/^that I am on the ([^"]*)/) do |page_name|
  case page_name
  when 'homepage'
    visit('http://localhost:3000')
  end
end

When(/^I follow "([^"]*)"$/) do |button|
  case button
  when 'Sign up' #É isto
    click_button('btn-user-signup')
  end
end

Then(/^I should be on the "([^"]*)" page$/) do |arg1|
  pending 
end

When(/^I fill in "([^"]*)" with a string$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I fill in "([^"]*)" with a valid input$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I select a valid birthdate$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I fill in "([^"]*)" with a valid password$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I press "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should be on the "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end