require "rails_helper"

RSpec.describe Admin::AdminPermissionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/admin_permissions").to route_to("admin/admin_permissions#index")
    end


    it "routes to #show" do
      expect(:get => "/admin/admin_permissions/1").to route_to("admin/admin_permissions#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/admin/admin_permissions").to route_to("admin/admin_permissions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/admin_permissions/1").to route_to("admin/admin_permissions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/admin_permissions/1").to route_to("admin/admin_permissions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/admin_permissions/1").to route_to("admin/admin_permissions#destroy", :id => "1")
    end

  end
end
