require "rails_helper"

RSpec.describe Admin::ComponentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/components").to route_to("admin/components#index")
    end


    it "routes to #show" do
      expect(:get => "/admin/components/1").to route_to("admin/components#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/admin/components").to route_to("admin/components#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/components/1").to route_to("admin/components#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/components/1").to route_to("admin/components#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/components/1").to route_to("admin/components#destroy", :id => "1")
    end

  end
end
