require 'rails_helper'

RSpec.describe "answer_grids/show", type: :view do
  before(:each) do
    @answer_grid = assign(:answer_grid, AnswerGrid.create!(
      :order => 2,
      :quest_id => 3,
      :question_id => 4,
      :value => 5,
      :user_id => 6
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
  end
end
