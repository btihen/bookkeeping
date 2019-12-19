require "rails_helper"

RSpec.describe Chart::AccountGroupsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/chart/account_groups").to route_to("chart/account_groups#index")
    end

    it "routes to #new" do
      expect(:get => "/chart/account_groups/new").to route_to("chart/account_groups#new")
    end

    it "routes to #show" do
      expect(:get => "/chart/account_groups/1").to route_to("chart/account_groups#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/chart/account_groups/1/edit").to route_to("chart/account_groups#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/chart/account_groups").to route_to("chart/account_groups#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/chart/account_groups/1").to route_to("chart/account_groups#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/chart/account_groups/1").to route_to("chart/account_groups#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/chart/account_groups/1").to route_to("chart/account_groups#destroy", :id => "1")
    end
  end
end
