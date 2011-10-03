require "spec_helper"

describe PerformanceTestsController do
  describe "routing" do

    it "routes to #index" do
      get("/performance_tests").should route_to("performance_tests#index")
    end

    it "routes to #new" do
      get("/performance_tests/new").should route_to("performance_tests#new")
    end

    it "routes to #show" do
      get("/performance_tests/1").should route_to("performance_tests#show", :id => "1")
    end

    it "routes to #edit" do
      get("/performance_tests/1/edit").should route_to("performance_tests#edit", :id => "1")
    end

    it "routes to #create" do
      post("/performance_tests").should route_to("performance_tests#create")
    end

    it "routes to #update" do
      put("/performance_tests/1").should route_to("performance_tests#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/performance_tests/1").should route_to("performance_tests#destroy", :id => "1")
    end

  end
end
