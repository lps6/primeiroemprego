require "rails_helper"

RSpec.describe QuestionGridsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/question_grids").to route_to("question_grids#index")
    end

    it "routes to #new" do
      expect(:get => "/question_grids/new").to route_to("question_grids#new")
    end

    it "routes to #show" do
      expect(:get => "/question_grids/1").to route_to("question_grids#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/question_grids/1/edit").to route_to("question_grids#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/question_grids").to route_to("question_grids#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/question_grids/1").to route_to("question_grids#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/question_grids/1").to route_to("question_grids#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/question_grids/1").to route_to("question_grids#destroy", :id => "1")
    end
  end
end
