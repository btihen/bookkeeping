require "rails_helper"

RSpec.describe Chart::AccountKlassesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/chart/account_klasses").to route_to("chart/account_klasses#index")
    end

    it "routes to #new" do
      expect(:get => "/chart/account_klasses/new").to route_to("chart/account_klasses#new")
    end

    it "routes to #show" do
      expect(:get => "/chart/account_klasses/1").to route_to("chart/account_klasses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/chart/account_klasses/1/edit").to route_to("chart/account_klasses#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/chart/account_klasses").to route_to("chart/account_klasses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/chart/account_klasses/1").to route_to("chart/account_klasses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/chart/account_klasses/1").to route_to("chart/account_klasses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/chart/account_klasses/1").to route_to("chart/account_klasses#destroy", :id => "1")
    end
  end
end
