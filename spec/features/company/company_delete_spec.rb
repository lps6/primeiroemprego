require "spec_helper"
include Warden::Test::Helpers
Warden.test_mode!


feature 'company profile page', :devise do

  after(:each) do
    Warden.test_reset!
  end


  scenario 'company sees dashboard' do
    company = FactoryGirl.create(:company)
    login_as(company, :scope => :company)
    visit edit_company_registration_path(company)
    click_button 'Cancelar meu cadastro'
    expect(page).to have_content I18n.t 'devise.registrations.destroyed'
  end

end

