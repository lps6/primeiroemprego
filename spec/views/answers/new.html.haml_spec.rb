require 'rails_helper'

RSpec.describe "answers/new", type: :view do
  before(:each) do
    assign(:answer, Answer.new(
      :user_id => 1,
      :quest_id => 1,
      :question_id => 1,
      :value => 1
    ))
  end

  it "renders new answer form" do
    render

    assert_select "form[action=?][method=?]", answers_path, "post" do

      assert_select "input[name=?]", "answer[user_id]"

      assert_select "input[name=?]", "answer[quest_id]"

      assert_select "input[name=?]", "answer[question_id]"

      assert_select "input[name=?]", "answer[value]"
    end
  end
end
