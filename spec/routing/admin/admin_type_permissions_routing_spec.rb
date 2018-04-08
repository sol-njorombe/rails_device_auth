require "rails_helper"

RSpec.describe Admin::AdminTypePermissionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/admin_type_permissions").to route_to("admin/admin_type_permissions#index")
    end


    it "routes to #show" do
      expect(:get => "/admin/admin_type_permissions/1").to route_to("admin/admin_type_permissions#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/admin/admin_type_permissions").to route_to("admin/admin_type_permissions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/admin_type_permissions/1").to route_to("admin/admin_type_permissions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/admin_type_permissions/1").to route_to("admin/admin_type_permissions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/admin_type_permissions/1").to route_to("admin/admin_type_permissions#destroy", :id => "1")
    end

  end
end
