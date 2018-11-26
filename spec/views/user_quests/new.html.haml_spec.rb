require 'rails_helper'

RSpec.describe "user_quests/new", type: :view do
  before(:each) do
    assign(:user_quest, UserQuest.new(
      :quest_id => 1
    ))
  end

  it "renders new user_quest form" do
    render

    assert_select "form[action=?][method=?]", user_quests_path, "post" do

      assert_select "input[name=?]", "user_quest[quest_id]"
    end
  end
end
