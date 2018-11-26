require "spec_helper"
include Warden::Test::Helpers
Warden.test_mode!


feature 'User profile page', :devise do

  after(:each) do
    Warden.test_reset!
  end


  scenario 'user sees dashboard' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit root_path(user)
    expect(page).to have_content 'Sobre mim'
    expect(page).to have_content user.name
  end
end