require 'rails_helper'

RSpec.describe "answers/index", type: :view do
  before(:each) do
    assign(:answers, [
      Answer.create!(
        :user_id => 2,
        :quest_id => 3,
        :question_id => 4,
        :value => 5
      ),
      Answer.create!(
        :user_id => 2,
        :quest_id => 3,
        :question_id => 4,
        :value => 5
      )
    ])
  end

  it "renders a list of answers" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
