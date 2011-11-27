require "spec_helper"

describe OperatingSystemsController do
  describe "routing" do

    it "routes to #index" do
      get("/operating_systems").should route_to("operating_systems#index")
    end

    it "routes to #new" do
      get("/operating_systems/new").should route_to("operating_systems#new")
    end

    it "routes to #show" do
      get("/operating_systems/1").should route_to("operating_systems#show", :id => "1")
    end

    it "routes to #edit" do
      get("/operating_systems/1/edit").should route_to("operating_systems#edit", :id => "1")
    end

    it "routes to #create" do
      post("/operating_systems").should route_to("operating_systems#create")
    end

    it "routes to #update" do
      put("/operating_systems/1").should route_to("operating_systems#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/operating_systems/1").should route_to("operating_systems#destroy", :id => "1")
    end

  end
end
