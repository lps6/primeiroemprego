require 'rails_helper'

RSpec.describe "question_grids/index", type: :view do
  before(:each) do
    assign(:question_grids, [
      QuestionGrid.create!(
        :id => 2,
        :positive => false,
        :range => 3,
        :increment => 4,
        :quest_id => 5
      ),
      QuestionGrid.create!(
        :id => 2,
        :positive => false,
        :range => 3,
        :increment => 4,
        :quest_id => 5
      )
    ])
  end

  it "renders a list of question_grids" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
