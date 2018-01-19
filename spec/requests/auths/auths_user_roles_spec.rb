require 'rails_helper'

RSpec.describe "Auths::UserRoles", type: :request do
  describe "GET /auths_user_roles" do
    it "works! (now write some real specs)" do
      get auths_user_roles_path
      expect(response).to have_http_status(200)
    end
  end
end
