require "rails_helper"

RSpec.describe MiceController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/mice").to route_to("mice#index")
    end


    it "routes to #show" do
      expect(:get => "/mice/1").to route_to("mice#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/mice").to route_to("mice#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/mice/1").to route_to("mice#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/mice/1").to route_to("mice#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/mice/1").to route_to("mice#destroy", :id => "1")
    end

  end
end
