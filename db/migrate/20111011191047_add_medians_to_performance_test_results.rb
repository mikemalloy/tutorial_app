class AddMediansToPerformanceTestResults < ActiveRecord::Migration
  def self.up
    add_column :performance_test_results, :measure1median, :float
    add_column :performance_test_results, :measure2median, :float
    add_column :performance_test_results, :measure3median, :float
    add_column :performance_test_results, :measure4median, :float
    add_column :performance_test_results, :measure5median, :float
  end
  
  def self.down
    delete_column :performance_test_results, :measure1median
    delete_column :performance_test_results, :measure2median
    delete_column :performance_test_results, :measure3median
    delete_column :performance_test_results, :measure4median
    delete_column :performance_test_results, :measure5median
  end
  
end
