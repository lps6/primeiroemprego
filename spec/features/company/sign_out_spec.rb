
feature 'Sign out', :devise do

    scenario 'company signs out successfully' do
      company = FactoryGirl.create(:company)
      sign_in_company(company.email, company.password)
      expect(page).to have_content I18n.t 'devise.sessions.signed_in'
      click_link 'Logout'
      expect(page).to have_content I18n.t 'devise.sessions.signed_out'
    end
  
end