require 'rails_helper'

RSpec.describe "quests/show", type: :view do
  before(:each) do
    @quest = assign(:quest, Quest.create!(
      :title => "Title",
      :description => "MyText",
      :creator => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
  end
end
