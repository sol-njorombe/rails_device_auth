require 'rails_helper'

RSpec.describe "SysAdmin::UserRoles", type: :request do
  describe "GET /sys_admin_user_roles" do
    it "works! (now write some real specs)" do
      get sys_admin_user_roles_path
      expect(response).to have_http_status(200)
    end
  end
end
