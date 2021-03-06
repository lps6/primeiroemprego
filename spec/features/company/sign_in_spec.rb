
feature 'Sign in', :devise do


    scenario 'company cannot sign in if not registered' do
      sign_in_company('test@example.com', 'please123')
      expect(page).to have_content I18n.t 'devise.failure.not_found_in_database', authentication_keys: 'Email'
    end
 
    scenario 'company can sign in with valid credentials' do
      company = FactoryGirl.create(:company)
      sign_in_company(company.email, company.password)
      expect(page).to have_content I18n.t 'devise.sessions.signed_in', authentication_keys: 'Email'
    end
  
 
    scenario 'company cannot sign in with wrong email' do
      company = FactoryGirl.create(:company)
      sign_in_company('invalid@email.com', company.password)
      expect(page).to have_content I18n.t 'devise.failure.not_found_in_database', authentication_keys: 'Email'
    end
  
 
    scenario 'company cannot sign in with wrong password' do
      company = FactoryGirl.create(:company)
      sign_in_company(company.email, 'invalidpass')
      expect(page).to have_content I18n.t 'devise.failure.invalid', authentication_keys: 'Email'
    end

  end
  def sign_in_company(email, password)
        visit new_company_session_path
        fill_in 'Email', with: email
        fill_in 'Senha', with: password
        click_button 'Login'
  end