require "spec_helper"
include Warden::Test::Helpers
Warden.test_mode!

feature 'company edit', :devise do

  after(:each) do
    Warden.test_reset!
  end
  scenario 'company changes email address' do
    company = FactoryGirl.create(:company)
    login_as(company, :scope => :company)
    visit edit_company_registration_path(company)
    fill_in 'Email', :with => 'newemail@example.com'
    fill_in 'current_password', :with => 'please123'
    click_button 'Atualizar'
    txts = [I18n.t( 'devise.registrations.updated'), I18n.t( 'devise.registrations.update_needs_confirmation')]
    expect(page).to have_content(/.*#{txts[0]}.*|.*#{txts[1]}.*/)
  end

  scenario "company cannot cannot edit another company's profile", :me do
    me = FactoryGirl.create(:company)
    other = FactoryGirl.create(:company, email: 'other@example.com')
    login_as(me, :scope => :company)
    visit edit_company_registration_path(other)
    expect(page).to have_content 'Editar cadastro'
    expect(page).to have_field('Email', with: me.email)
  end

end
