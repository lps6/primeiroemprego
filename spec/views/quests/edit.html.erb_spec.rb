require 'rails_helper'

RSpec.describe "quests/edit", type: :view do
  before(:each) do
    @quest = assign(:quest, Quest.create!(
      :id => 1,
      :description => "MyString",
      :summary => "MyText",
      :creator => "MyString"
    ))
  end

  it "renders the edit quest form" do
    render

    assert_select "form[action=?][method=?]", quest_path(@quest), "post" do

      assert_select "input[name=?]", "quest[id]"

      assert_select "input[name=?]", "quest[description]"

      assert_select "textarea[name=?]", "quest[summary]"

      assert_select "input[name=?]", "quest[creator]"
    end
  end
end
