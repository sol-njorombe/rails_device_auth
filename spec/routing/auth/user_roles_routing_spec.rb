require "rails_helper"

RSpec.describe Auth::UserRolesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/auth/user_roles").to route_to("auth/user_roles#index")
    end


    it "routes to #show" do
      expect(:get => "/auth/user_roles/1").to route_to("auth/user_roles#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/auth/user_roles").to route_to("auth/user_roles#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/auth/user_roles/1").to route_to("auth/user_roles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/auth/user_roles/1").to route_to("auth/user_roles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/auth/user_roles/1").to route_to("auth/user_roles#destroy", :id => "1")
    end

  end
end
