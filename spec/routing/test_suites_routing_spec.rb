require "spec_helper"

describe TestSuitesController do
  describe "routing" do

    it "routes to #index" do
      get("/test_suites").should route_to("test_suites#index")
    end

    it "routes to #new" do
      get("/test_suites/new").should route_to("test_suites#new")
    end

    it "routes to #show" do
      get("/test_suites/1").should route_to("test_suites#show", :id => "1")
    end

    it "routes to #edit" do
      get("/test_suites/1/edit").should route_to("test_suites#edit", :id => "1")
    end

    it "routes to #create" do
      post("/test_suites").should route_to("test_suites#create")
    end

    it "routes to #update" do
      put("/test_suites/1").should route_to("test_suites#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/test_suites/1").should route_to("test_suites#destroy", :id => "1")
    end

  end
end
