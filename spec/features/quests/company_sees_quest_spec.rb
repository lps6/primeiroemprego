feature 'Comapany can see quests', :devise do 
    scenario 'company can see quests on dashboard' do
      company = FactoryGirl.create(:company)
      sign_in_company(company.email, company.password)
      create(:quest, company: company)
      visit root_path(company)
      expect(page).to have_content "This is a test for a quest"
    end

    scenario 'company can view quest from dashboard' do
        company = FactoryGirl.create(:company)
        sign_in_company(company.email, company.password)
        quest =create(:quest, company: company)
        visit root_path(company)
        find('#btn-show-quest').click
        expect(page).to have_current_path (quest_path(quest.id))
        expect(page).to have_content "This is a test for a quest"
      end
  end