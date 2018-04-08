require 'rails_helper'

RSpec.describe "Admin::AdminTypePermissions", type: :request do
  describe "GET /admin_admin_type_permissions" do
    it "works! (now write some real specs)" do
      get admin_admin_type_permissions_path
      expect(response).to have_http_status(200)
    end
  end
end
