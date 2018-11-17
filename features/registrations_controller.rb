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
end

When(/^I fill in ([^"]*) with ([^"]*)/) do |param, filler|
  case param
  when "Nome"
    page.find(param).fill_in(param, with: filler)
  end
  when "CPF"
    page.find(param).fill_in(param, with: filler)
  end
  when "Sobre Mim"
    page.find(param).fill_in(param, with: filler)
  end
  when "Email"
    page.find(param).fill_in(param, with: filler)
  end
  when "Senha"
    page.find(param).fill_in(param, with: filler)
  end
  when "Confirmar Senha"
    page.find(param).fill_in(param, with: filler)
  end  
end

When(/^I select a valid birthdate$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I press "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should be on the "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end