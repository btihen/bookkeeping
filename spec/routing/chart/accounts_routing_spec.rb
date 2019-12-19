require "rails_helper"

RSpec.describe Chart::AccountsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/chart/accounts").to route_to("chart/accounts#index")
    end

    it "routes to #new" do
      expect(:get => "/chart/accounts/new").to route_to("chart/accounts#new")
    end

    it "routes to #show" do
      expect(:get => "/chart/accounts/1").to route_to("chart/accounts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/chart/accounts/1/edit").to route_to("chart/accounts#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/chart/accounts").to route_to("chart/accounts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/chart/accounts/1").to route_to("chart/accounts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/chart/accounts/1").to route_to("chart/accounts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/chart/accounts/1").to route_to("chart/accounts#destroy", :id => "1")
    end
  end
end
