class AddMeasure5AvgToPerformanceTestResults < ActiveRecord::Migration
  def self.up
    add_column :performance_test_results, :measure5avg, :float
  end
  
  def self.down
     delete_column :performance_test_results, :measure5avg
  end
end
