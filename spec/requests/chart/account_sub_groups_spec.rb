require 'rails_helper'

RSpec.describe "Chart::AccountSubGroups", type: :request do
  describe "GET /chart/account_sub_groups" do
    it "works! (now write some real specs)" do
      get chart_account_sub_groups_path
      expect(response).to have_http_status(200)
    end
  end
end
