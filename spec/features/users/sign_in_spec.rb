
feature 'Sign in', :devise do


    scenario 'user cannot sign in if not registered' do
      signin('tesopt@example.com', 'please123')
      expect(page).to have_content I18n.t 'devise.failure.not_found_in_database', authentication_keys: 'Email'
    end
 
    scenario 'user can sign in with valid credentials' do
      user = FactoryGirl.create(:user)
      signin(user.email, user.password)
      expect(page).to have_content I18n.t 'devise.sessions.signed_in'
    end
  
 
    scenario 'user cannot sign in with wrong email' do
      user = FactoryGirl.create(:user)
      signin('invalid@email.com', user.password)
      expect(page).to have_content I18n.t 'devise.failure.not_found_in_database', authentication_keys: 'Email'
    end
  
 
    scenario 'user cannot sign in with wrong password' do
      user = FactoryGirl.create(:user)
      signin(user.email, 'invalidpass')
      expect(page).to have_content I18n.t 'devise.failure.invalid', authentication_keys: 'Email'
    end

  end
  def signin(email, password)
        visit new_user_session_path
        fill_in 'Email', with: email
        fill_in 'Senha', with: password
        click_button 'Login'
  end