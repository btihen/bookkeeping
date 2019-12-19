require 'rails_helper'

RSpec.describe "Chart::AccountGroups", type: :request do
  describe "GET /chart/account_groups" do
    it "works! (now write some real specs)" do
      get chart_account_groups_path
      expect(response).to have_http_status(200)
    end
  end
end
