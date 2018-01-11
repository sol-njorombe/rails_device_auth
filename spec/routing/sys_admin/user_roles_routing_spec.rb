require "rails_helper"

RSpec.describe SysAdmin::UserRolesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sys_admin/user_roles").to route_to("sys_admin/user_roles#index")
    end


    it "routes to #show" do
      expect(:get => "/sys_admin/user_roles/1").to route_to("sys_admin/user_roles#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/sys_admin/user_roles").to route_to("sys_admin/user_roles#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/sys_admin/user_roles/1").to route_to("sys_admin/user_roles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/sys_admin/user_roles/1").to route_to("sys_admin/user_roles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sys_admin/user_roles/1").to route_to("sys_admin/user_roles#destroy", :id => "1")
    end

  end
end
