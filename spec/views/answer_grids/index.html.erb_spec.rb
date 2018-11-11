require 'rails_helper'

RSpec.describe "answer_grids/index", type: :view do
  before(:each) do
    assign(:answer_grids, [
      AnswerGrid.create!(
        :order => 2,
        :quest_id => 3,
        :question_id => 4,
        :value => 5,
        :user_id => 6
      ),
      AnswerGrid.create!(
        :order => 2,
        :quest_id => 3,
        :question_id => 4,
        :value => 5,
        :user_id => 6
      )
    ])
  end

  it "renders a list of answer_grids" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
  end
end
