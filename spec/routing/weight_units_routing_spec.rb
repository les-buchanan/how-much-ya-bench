require "rails_helper"

RSpec.describe WeightUnitsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/weight_units").to route_to("weight_units#index")
    end

    it "routes to #new" do
      expect(:get => "/weight_units/new").to route_to("weight_units#new")
    end

    it "routes to #show" do
      expect(:get => "/weight_units/1").to route_to("weight_units#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/weight_units/1/edit").to route_to("weight_units#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/weight_units").to route_to("weight_units#create")
    end

    it "routes to #update" do
      expect(:put => "/weight_units/1").to route_to("weight_units#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/weight_units/1").to route_to("weight_units#destroy", :id => "1")
    end

  end
end
