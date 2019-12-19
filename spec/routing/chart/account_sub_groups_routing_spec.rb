require "rails_helper"

RSpec.describe Chart::AccountSubGroupsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/chart/account_sub_groups").to route_to("chart/account_sub_groups#index")
    end

    it "routes to #new" do
      expect(:get => "/chart/account_sub_groups/new").to route_to("chart/account_sub_groups#new")
    end

    it "routes to #show" do
      expect(:get => "/chart/account_sub_groups/1").to route_to("chart/account_sub_groups#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/chart/account_sub_groups/1/edit").to route_to("chart/account_sub_groups#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/chart/account_sub_groups").to route_to("chart/account_sub_groups#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/chart/account_sub_groups/1").to route_to("chart/account_sub_groups#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/chart/account_sub_groups/1").to route_to("chart/account_sub_groups#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/chart/account_sub_groups/1").to route_to("chart/account_sub_groups#destroy", :id => "1")
    end
  end
end
