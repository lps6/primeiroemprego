require "rails_helper"

RSpec.describe UserQuestsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/user_quests").to route_to("user_quests#index")
    end

    it "routes to #new" do
      expect(:get => "/user_quests/new").to route_to("user_quests#new")
    end

    it "routes to #show" do
      expect(:get => "/user_quests/1").to route_to("user_quests#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_quests/1/edit").to route_to("user_quests#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/user_quests").to route_to("user_quests#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_quests/1").to route_to("user_quests#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_quests/1").to route_to("user_quests#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_quests/1").to route_to("user_quests#destroy", :id => "1")
    end
  end
end
