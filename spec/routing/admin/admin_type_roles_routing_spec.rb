require "rails_helper"

RSpec.describe Admin::AdminTypeRolesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/admin_type_roles").to route_to("admin/admin_type_roles#index")
    end


    it "routes to #show" do
      expect(:get => "/admin/admin_type_roles/1").to route_to("admin/admin_type_roles#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/admin/admin_type_roles").to route_to("admin/admin_type_roles#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/admin_type_roles/1").to route_to("admin/admin_type_roles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/admin_type_roles/1").to route_to("admin/admin_type_roles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/admin_type_roles/1").to route_to("admin/admin_type_roles#destroy", :id => "1")
    end

  end
end
