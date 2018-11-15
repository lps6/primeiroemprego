require 'rails_helper'

RSpec.describe "quests/edit", type: :view do
  before(:each) do
    @quest = assign(:quest, Quest.create!(
      :title => "MyString",
      :description => "MyText",
      :creator => 1
    ))
  end

  it "renders the edit quest form" do
    render

    assert_select "form[action=?][method=?]", quest_path(@quest), "post" do

      assert_select "input[name=?]", "quest[title]"

      assert_select "textarea[name=?]", "quest[description]"

      assert_select "input[name=?]", "quest[creator]"
    end
  end
end
