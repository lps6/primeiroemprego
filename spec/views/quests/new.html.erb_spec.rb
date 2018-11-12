require 'rails_helper'

RSpec.describe "quests/new", type: :view do
  before(:each) do
    assign(:quest, Quest.new(
      :id => 1,
      :description => "MyString",
      :summary => "MyText",
      :creator => "MyString"
    ))
  end

  it "renders new quest form" do
    render

    assert_select "form[action=?][method=?]", quests_path, "post" do

      assert_select "input[name=?]", "quest[id]"

      assert_select "input[name=?]", "quest[description]"

      assert_select "textarea[name=?]", "quest[summary]"

      assert_select "input[name=?]", "quest[creator]"
    end
  end
end
