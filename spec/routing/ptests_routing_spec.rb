require "spec_helper"

describe PtestsController do
  describe "routing" do

    it "routes to #index" do
      get("/ptests").should route_to("ptests#index")
    end

    it "routes to #new" do
      get("/ptests/new").should route_to("ptests#new")
    end

    it "routes to #show" do
      get("/ptests/1").should route_to("ptests#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ptests/1/edit").should route_to("ptests#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ptests").should route_to("ptests#create")
    end

    it "routes to #update" do
      put("/ptests/1").should route_to("ptests#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ptests/1").should route_to("ptests#destroy", :id => "1")
    end

  end
end
