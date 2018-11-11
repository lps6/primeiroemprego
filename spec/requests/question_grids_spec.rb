require 'rails_helper'

RSpec.describe "QuestionGrids", type: :request do
  describe "GET /question_grids" do
    it "works! (now write some real specs)" do
      get question_grids_path
      expect(response).to have_http_status(200)
    end
  end
end
