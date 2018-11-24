Given(/^that I am on the ([^"]*)/) do |page_name|
  case page_name
  when 'homepage'
    visit(root_path)
  end
  case page_name
  when 'home page'
    visit(root_path)
  end
end

When(/^I follow ([^"]*)/) do |button|
  case button
  when 'Sign Up'
    page.find('btn-user-signup').click
  end
  case button
  when 'Sign up'
    page.find('btn-company-signup').click
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
  case arg1  
  when "Sign up"
    expect(page).to current_path(new_company_registration_path)
  end
end

When("I fill in {string} with {string}") do |param, filler|
  case param
  when "Nome"
    page.find(param).fill_in(param, with: filler)
  end
end

When(/^I press ([^"]*)/) do |button|
  case button
  when 'Sign Up'
    page.find('Sign Up').click
  end
end