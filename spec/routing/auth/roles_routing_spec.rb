require "rails_helper"

RSpec.describe Auth::RolesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/auth/roles").to route_to("auth/roles#index")
    end


    it "routes to #show" do
      expect(:get => "/auth/roles/1").to route_to("auth/roles#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/auth/roles").to route_to("auth/roles#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/auth/roles/1").to route_to("auth/roles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/auth/roles/1").to route_to("auth/roles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/auth/roles/1").to route_to("auth/roles#destroy", :id => "1")
    end

  end
end
