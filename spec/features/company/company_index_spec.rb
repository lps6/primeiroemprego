=begin
require "spec_helper"
include Warden::Test::Helpers
Warden.test_mode!

feature 'company index page', :devise do

  after(:each) do
    Warden.test_reset!
  end

  scenario 'company sees own email address' do
    company = FactoryGirl.create(:company)
    login_as(company, scope: :company)
    visit root_path
    expect(page).to have_content company.email
  end

end
=end