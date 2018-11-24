include Warden::Test::Helpers
Warden.test_mode!

feature 'User delete', :devise, :js do

  after(:each) do
    Warden.test_reset!
  end

  scenario 'user can delete own account' do
    skip 'skip a slow test'
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit edit_user_registration_path(user)
    click_button 'Cancel my account'
    page.driver.browser.switch_to.alert.accept
    expect(page).to have_content I18n.t 'devise.registrations.destroyed'
  end

end

