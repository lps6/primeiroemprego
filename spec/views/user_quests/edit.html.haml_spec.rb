require 'rails_helper'

RSpec.describe "user_quests/edit", type: :view do
  before(:each) do
    @user_quest = assign(:user_quest, UserQuest.create!(
      :quest_id => 1
    ))
  end

  it "renders the edit user_quest form" do
    render

    assert_select "form[action=?][method=?]", user_quest_path(@user_quest), "post" do

      assert_select "input[name=?]", "user_quest[quest_id]"
    end
  end
end
