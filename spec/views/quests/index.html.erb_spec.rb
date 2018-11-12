require 'rails_helper'

RSpec.describe "quests/index", type: :view do
  before(:each) do
    assign(:quests, [
      Quest.create!(
        :id => 2,
        :description => "Description",
        :summary => "MyText",
        :creator => "Creator"
      ),
      Quest.create!(
        :id => 2,
        :description => "Description",
        :summary => "MyText",
        :creator => "Creator"
      )
    ])
  end

  it "renders a list of quests" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Creator".to_s, :count => 2
  end
end
