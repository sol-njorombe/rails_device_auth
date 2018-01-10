require 'rails_helper'

RSpec.describe "SysAdmin::Roles", type: :request do
  describe "GET /sys_admin_roles" do
    it "works! (now write some real specs)" do
      get sys_admin_roles_path
      expect(response).to have_http_status(200)
    end
  end
end
