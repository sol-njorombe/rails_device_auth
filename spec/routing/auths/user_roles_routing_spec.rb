require "rails_helper"

RSpec.describe Auths::UserRolesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/auths/user_roles").to route_to("auths/user_roles#index")
    end


    it "routes to #show" do
      expect(:get => "/auths/user_roles/1").to route_to("auths/user_roles#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/auths/user_roles").to route_to("auths/user_roles#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/auths/user_roles/1").to route_to("auths/user_roles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/auths/user_roles/1").to route_to("auths/user_roles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/auths/user_roles/1").to route_to("auths/user_roles#destroy", :id => "1")
    end

  end
end
