require "rails_helper"

RSpec.describe Dev::RolesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dev/roles").to route_to("dev/roles#index")
    end


    it "routes to #show" do
      expect(:get => "/dev/roles/1").to route_to("dev/roles#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/dev/roles").to route_to("dev/roles#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dev/roles/1").to route_to("dev/roles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dev/roles/1").to route_to("dev/roles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dev/roles/1").to route_to("dev/roles#destroy", :id => "1")
    end

  end
end
