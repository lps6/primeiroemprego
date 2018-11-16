require 'rails_helper'

RSpec.describe "answer_grids/new", type: :view do
  before(:each) do
    assign(:answer_grid, AnswerGrid.new(
      :order => 1,
      :quest_id => 1,
      :question_id => 1,
      :value => 1,
      :user_id => 1
    ))
  end

  it "renders new answer_grid form" do
    render

    assert_select "form[action=?][method=?]", answer_grids_path, "post" do

      assert_select "input[name=?]", "answer_grid[order]"

      assert_select "input[name=?]", "answer_grid[quest_id]"

      assert_select "input[name=?]", "answer_grid[question_id]"

      assert_select "input[name=?]", "answer_grid[value]"

      assert_select "input[name=?]", "answer_grid[user_id]"
    end
  end
end
