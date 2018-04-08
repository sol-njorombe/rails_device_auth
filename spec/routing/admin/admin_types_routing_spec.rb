require "rails_helper"

RSpec.describe Admin::AdminTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/admin_types").to route_to("admin/admin_types#index")
    end


    it "routes to #show" do
      expect(:get => "/admin/admin_types/1").to route_to("admin/admin_types#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/admin/admin_types").to route_to("admin/admin_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/admin_types/1").to route_to("admin/admin_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/admin_types/1").to route_to("admin/admin_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/admin_types/1").to route_to("admin/admin_types#destroy", :id => "1")
    end

  end
end
