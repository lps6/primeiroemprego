Given(/^that I am on the ([^"]*)/) do |page_name|
  case page_name
  when 'homepage'
    visit(root_path)
  end
end

When(/^I follow ([^"]*)/) do |button|
  case button
  when 'Sign up'
    page.find('btn-user-signup').click
  end
end


Then(/^I should be on the page ([^"]*)/) do |arg1|
  case arg1
  when "Sign Up"
    expect(page).to current_path(new_user_registration_path)   
  end
  case arg1
  when "Dashboard"
    expect(page).to current_path(dashboard_path)  
  end
end

When("I fill in {string} with {string}") do |param, filler|
  case param
  when "Nome"
    page.find(param).fill_in(param, with: filler)
  end
end

When(/^I fill in ([^"]*) with ([^"]*)/) do |param, filler|
  case param
  when "user_cpf"
    page.find(param).fill_in(param, with: filler)
  end
end

When(/^I fill in ([^"]*) with ([^"]*)/) do |param, filler|
  case param
  when "user_birth_date"
    page.find(param).fill_in(param, with: filler)
  end
end

When(/^I fill in ([^"]*) with ([^"]*)/) do |param, filler|
  case param
  when "user_about_me"
    page.find(param).fill_in(param, with: filler)
  end
end

When(/^I fill in ([^"]*) with ([^"]*)/) do |param, filler|
  case param
  when "user_email"
    page.find(param).fill_in(param, with: filler)
  end
end



When(/^I fill in ([^"]*) with ([^"]*)/) do |param, filler|
  case param
  when "user_password"
    page.find(param).fill_in(param, with: filler)
  end
end


When(/^I fill in ([^"]*) with ([^"]*)/) do |param, filler|
  case param
  when "user_password_confirmation"
    page.find(param).fill_in(param, with: filler)
  end
end

When(/^I press ([^"]*)/) do |button|
  case button
  when 'Sign Up'
    page.find('Sign Up').click
  end
end

#Then(/^I should be on the ([^"]*)/) do |arg1|
#  case arg1
#  when "Dashboard"
#    expect(page).to current_path(dashboard_path)   
#  end
#end