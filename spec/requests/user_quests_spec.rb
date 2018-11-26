require 'rails_helper'

RSpec.describe "UserQuests", type: :request do
  describe "GET /user_quests" do
    it "works! (now write some real specs)" do
      get user_quests_path
      expect(response).to have_http_status(200)
    end
  end
end
