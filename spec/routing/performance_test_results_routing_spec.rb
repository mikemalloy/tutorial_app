require "spec_helper"

describe PerformanceTestResultsController do
  describe "routing" do

    it "routes to #index" do
      get("/performance_test_results").should route_to("performance_test_results#index")
    end

    it "routes to #new" do
      get("/performance_test_results/new").should route_to("performance_test_results#new")
    end

    it "routes to #show" do
      get("/performance_test_results/1").should route_to("performance_test_results#show", :id => "1")
    end

    it "routes to #edit" do
      get("/performance_test_results/1/edit").should route_to("performance_test_results#edit", :id => "1")
    end

    it "routes to #create" do
      post("/performance_test_results").should route_to("performance_test_results#create")
    end

    it "routes to #update" do
      put("/performance_test_results/1").should route_to("performance_test_results#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/performance_test_results/1").should route_to("performance_test_results#destroy", :id => "1")
    end

  end
end
