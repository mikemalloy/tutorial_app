class AddBuildToPerformancTestResult < ActiveRecord::Migration
  def self.up
    add_column :performance_test_results, :build, :string
  end
  
  def self.down
     remove_column :performance_test_results, :build
  end
end
