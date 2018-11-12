require 'rails_helper'

RSpec.describe "question_grids/edit", type: :view do
  before(:each) do
    @question_grid = assign(:question_grid, QuestionGrid.create!(
      :id => 1,
      :positive => false,
      :range => 1,
      :increment => 1,
      :quest_id => 1
    ))
  end

  it "renders the edit question_grid form" do
    render

    assert_select "form[action=?][method=?]", question_grid_path(@question_grid), "post" do

      assert_select "input[name=?]", "question_grid[id]"

      assert_select "input[name=?]", "question_grid[positive]"

      assert_select "input[name=?]", "question_grid[range]"

      assert_select "input[name=?]", "question_grid[increment]"

      assert_select "input[name=?]", "question_grid[quest_id]"
    end
  end
end
