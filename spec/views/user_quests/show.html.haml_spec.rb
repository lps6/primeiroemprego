require 'rails_helper'

RSpec.describe "user_quests/show", type: :view do
  before(:each) do
    @user_quest = assign(:user_quest, UserQuest.create!(
      :quest_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
  end
end
