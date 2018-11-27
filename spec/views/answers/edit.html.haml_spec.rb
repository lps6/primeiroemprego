require 'rails_helper'

RSpec.describe "answers/edit", type: :view do
  before(:each) do
    @answer = assign(:answer, Answer.create!(
      :user_id => 1,
      :quest_id => 1,
      :question_id => 1,
      :value => 1
    ))
  end

  it "renders the edit answer form" do
    render

    assert_select "form[action=?][method=?]", answer_path(@answer), "post" do

      assert_select "input[name=?]", "answer[user_id]"

      assert_select "input[name=?]", "answer[quest_id]"

      assert_select "input[name=?]", "answer[question_id]"

      assert_select "input[name=?]", "answer[value]"
    end
  end
end
