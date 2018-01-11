require 'rails_helper'

RSpec.describe "SysAdmin::Users", type: :request do
  describe "GET /sys_admin_users" do
    it "works! (now write some real specs)" do
      get sys_admin_users_path
      expect(response).to have_http_status(200)
    end
  end
end
