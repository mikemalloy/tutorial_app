require "spec_helper"

describe PtestResultsController do
  describe "routing" do

    it "routes to #index" do
      get("/ptest_results").should route_to("ptest_results#index")
    end

    it "routes to #new" do
      get("/ptest_results/new").should route_to("ptest_results#new")
    end

    it "routes to #show" do
      get("/ptest_results/1").should route_to("ptest_results#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ptest_results/1/edit").should route_to("ptest_results#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ptest_results").should route_to("ptest_results#create")
    end

    it "routes to #update" do
      put("/ptest_results/1").should route_to("ptest_results#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ptest_results/1").should route_to("ptest_results#destroy", :id => "1")
    end

  end
end
