require 'rails_helper'

RSpec.describe "Admin::AdminTypes", type: :request do
  describe "GET /admin_admin_types" do
    it "works! (now write some real specs)" do
      get admin_admin_types_path
      expect(response).to have_http_status(200)
    end
  end
end
