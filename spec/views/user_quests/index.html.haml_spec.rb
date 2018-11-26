require 'rails_helper'

RSpec.describe "user_quests/index", type: :view do
  before(:each) do
    assign(:user_quests, [
      UserQuest.create!(
        :quest_id => 2
      ),
      UserQuest.create!(
        :quest_id => 2
      )
    ])
  end

  it "renders a list of user_quests" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
