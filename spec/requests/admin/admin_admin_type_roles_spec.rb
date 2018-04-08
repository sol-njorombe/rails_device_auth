require 'rails_helper'

RSpec.describe "Admin::AdminTypeRoles", type: :request do
  describe "GET /admin_admin_type_roles" do
    it "works! (now write some real specs)" do
      get admin_admin_type_roles_path
      expect(response).to have_http_status(200)
    end
  end
end
