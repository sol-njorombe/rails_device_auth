require "rails_helper"

RSpec.describe SysAdmin::UsersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sys_admin/users").to route_to("sys_admin/users#index")
    end


    it "routes to #show" do
      expect(:get => "/sys_admin/users/1").to route_to("sys_admin/users#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/sys_admin/users").to route_to("sys_admin/users#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/sys_admin/users/1").to route_to("sys_admin/users#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/sys_admin/users/1").to route_to("sys_admin/users#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sys_admin/users/1").to route_to("sys_admin/users#destroy", :id => "1")
    end

  end
end
