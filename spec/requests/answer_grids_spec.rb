require 'rails_helper'

RSpec.describe "AnswerGrids", type: :request do
  describe "GET /answer_grids" do
    it "works! (now write some real specs)" do
      get answer_grids_path
      expect(response).to have_http_status(200)
    end
  end
end
