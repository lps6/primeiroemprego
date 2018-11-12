require "rails_helper"

RSpec.describe AnswerGridsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/answer_grids").to route_to("answer_grids#index")
    end

    it "routes to #new" do
      expect(:get => "/answer_grids/new").to route_to("answer_grids#new")
    end

    it "routes to #show" do
      expect(:get => "/answer_grids/1").to route_to("answer_grids#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/answer_grids/1/edit").to route_to("answer_grids#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/answer_grids").to route_to("answer_grids#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/answer_grids/1").to route_to("answer_grids#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/answer_grids/1").to route_to("answer_grids#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/answer_grids/1").to route_to("answer_grids#destroy", :id => "1")
    end
  end
end
