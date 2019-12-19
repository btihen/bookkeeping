require 'rails_helper'

RSpec.describe "Chart::AccountKlasses", type: :request do
  describe "GET /chart/account_klasses" do
    it "works! (now write some real specs)" do
      get chart_account_klasses_path
      expect(response).to have_http_status(200)
    end
  end
end
