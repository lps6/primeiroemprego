require 'rails_helper'

RSpec.describe "question_grids/show", type: :view do
  before(:each) do
    @question_grid = assign(:question_grid, QuestionGrid.create!(
      :id => 2,
      :positive => false,
      :range => 3,
      :increment => 4,
      :quest_id => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
  end
end
