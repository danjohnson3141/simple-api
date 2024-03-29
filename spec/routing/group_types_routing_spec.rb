require "rails_helper"

RSpec.describe GroupTypesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/group_types").to route_to("group_types#index")
    end

    it "routes to #new" do
      expect(:get => "/group_types/new").to route_to("group_types#new")
    end

    it "routes to #show" do
      expect(:get => "/group_types/1").to route_to("group_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/group_types/1/edit").to route_to("group_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/group_types").to route_to("group_types#create")
    end

    it "routes to #update" do
      expect(:put => "/group_types/1").to route_to("group_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/group_types/1").to route_to("group_types#destroy", :id => "1")
    end

  end
end
