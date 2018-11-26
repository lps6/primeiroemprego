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
    visit root_path(company)
    expect(page).to have_content 'Quests criadas'
    expect(page).to have_content company.name
  end
end