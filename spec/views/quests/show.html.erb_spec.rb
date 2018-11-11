require 'rails_helper'

RSpec.describe "quests/show", type: :view do
  before(:each) do
    @quest = assign(:quest, Quest.create!(
      :id => 2,
      :description => "Description",
      :summary => "MyText",
      :creator => "Creator"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Creator/)
  end
end
