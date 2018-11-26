require "spec_helper"
include Warden::Test::Helpers
Warden.test_mode!


feature 'Company can create a new quest', :devise do

  after(:each) do
    Warden.test_reset!
  end


  scenario 'company sees new quest button' do
    company = FactoryGirl.create(:company)
    login_as(company, :scope => :company)
    visit root_path(company)
    expect(page).to have_content '+ Nova Quest'
  end

  scenario 'company goes to new quest path' do
    company = FactoryGirl.create(:company)
    login_as(company, :scope => :company)
    visit root_path(company)
    find('#btn-create-quest').click
    expect(page).to have_current_path (new_quest_path)
  end

  scenario 'company goes to new quest path' do
    company = FactoryGirl.create(:company)
    login_as(company, :scope => :company)
    visit new_quest_path(company)
    fill_in 'fld-quest-title', :with => 'Teste'
    fill_in 'fld-quest-description', :with => 'Descrição teste'
    find('#btn-new-question').click
    #fill_in 'fld-question', :with => 'Pergunta teste'
    find('#btn-submit-quest').click
    expect(page).to have_content ('Quest was successfully created.')
    expect(page).to have_content ('Teste')
    expect(page).to have_content ('Descrição teste')
    #expect(page).to have_content ('Pergunta teste')
  end
end