feature 'Sign in', :devise do 
    scenario 'company can sign in with valid credentials' do
      company = FactoryGirl.create(:company)
      sign_in_company(company.email, company.password)
      create(:quest, company: company)
      visit root_path(company)
      expect(page).to have_content "This is a test for a quest"
    end

  end