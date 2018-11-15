require 'rails_helper'

RSpec.describe "question_grids/new", type: :view do
  before(:each) do
    assign(:question_grid, QuestionGrid.new(
      :id => 1,
      :positive => false,
      :range => 1,
      :increment => 1,
      :quest_id => 1
    ))
  end

  it "renders new question_grid form" do
    render

    assert_select "form[action=?][method=?]", question_grids_path, "post" do

      assert_select "input[name=?]", "question_grid[id]"

      assert_select "input[name=?]", "question_grid[positive]"

      assert_select "input[name=?]", "question_grid[range]"

      assert_select "input[name=?]", "question_grid[increment]"

      assert_select "input[name=?]", "question_grid[quest_id]"
    end
  end
end
