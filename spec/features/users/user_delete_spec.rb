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
    visit edit_user_registration_path(user)
    click_button 'Cancelar meu cadastro'
    expect(page).to have_content I18n.t 'devise.registrations.destroyed'
  end

end

