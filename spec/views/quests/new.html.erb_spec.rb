require 'rails_helper'

RSpec.describe "quests/new", type: :view do
  before(:each) do
    assign(:quest, Quest.new(
      :title => "MyString",
      :description => "MyText",
      :creator => 1
    ))
  end

  it "renders new quest form" do
    render

    assert_select "form[action=?][method=?]", quests_path, "post" do

      assert_select "input[name=?]", "quest[title]"

      assert_select "textarea[name=?]", "quest[description]"

      assert_select "input[name=?]", "quest[creator]"
    end
  end
end
