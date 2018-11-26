feature 'Comapany can delete quest', :devise do 
    scenario 'from dashboard' do
      company = FactoryGirl.create(:company)
      sign_in_company(company.email, company.password)
      create(:quest, company: company)
      visit root_path(company)
      find('#btn-delete-quest').click
      visit root_path(company)
      expect(page).to have_no_content "This is a test for a quest"
    end

    scenario 'from quest-show' do
        company = FactoryGirl.create(:company)
        sign_in_company(company.email, company.password)
        create(:quest, company: company)
        visit root_path(company)
        find('#btn-show-quest').click
        find('#btn-delete-quest').click
        visit root_path(company)
        expect(page).to have_no_content "This is a test for a quest"
      end
  end