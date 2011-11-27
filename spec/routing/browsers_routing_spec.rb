require "spec_helper"

describe BrowsersController do
  describe "routing" do

    it "routes to #index" do
      get("/browsers").should route_to("browsers#index")
    end

    it "routes to #new" do
      get("/browsers/new").should route_to("browsers#new")
    end

    it "routes to #show" do
      get("/browsers/1").should route_to("browsers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/browsers/1/edit").should route_to("browsers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/browsers").should route_to("browsers#create")
    end

    it "routes to #update" do
      put("/browsers/1").should route_to("browsers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/browsers/1").should route_to("browsers#destroy", :id => "1")
    end

  end
end
