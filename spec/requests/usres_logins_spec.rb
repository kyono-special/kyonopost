require 'rails_helper'

RSpec.describe "UsresLogins", type: :request do
  describe "GET /usres_logins" do
    it "works! (now write some real specs)" do
      get usres_logins_path
      expect(response).to have_http_status(200)
    end
  end
end
