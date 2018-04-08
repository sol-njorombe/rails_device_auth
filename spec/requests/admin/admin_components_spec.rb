require 'rails_helper'

RSpec.describe "Admin::Components", type: :request do
  describe "GET /admin_components" do
    it "works! (now write some real specs)" do
      get admin_components_path
      expect(response).to have_http_status(200)
    end
  end
end
