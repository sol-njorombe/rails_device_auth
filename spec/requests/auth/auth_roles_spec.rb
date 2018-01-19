require 'rails_helper'

RSpec.describe "Auth::Roles", type: :request do
  describe "GET /auth_roles" do
    it "works! (now write some real specs)" do
      get auth_roles_path
      expect(response).to have_http_status(200)
    end
  end
end
