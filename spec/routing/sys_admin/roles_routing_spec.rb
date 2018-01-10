require "rails_helper"

RSpec.describe SysAdmin::RolesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sys_admin/roles").to route_to("sys_admin/roles#index")
    end


    it "routes to #show" do
      expect(:get => "/sys_admin/roles/1").to route_to("sys_admin/roles#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/sys_admin/roles").to route_to("sys_admin/roles#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/sys_admin/roles/1").to route_to("sys_admin/roles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/sys_admin/roles/1").to route_to("sys_admin/roles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sys_admin/roles/1").to route_to("sys_admin/roles#destroy", :id => "1")
    end

  end
end
