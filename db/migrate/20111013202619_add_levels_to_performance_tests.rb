class AddLevelsToPerformanceTests < ActiveRecord::Migration
  def self.up
    add_column :performance_tests, :uses_levels, :boolean
    add_column :performance_tests, :level1_max, :float
    add_column :performance_tests, :level2_max, :float
    add_column :performance_tests, :level3_max, :float
  end
  
  def self.down
    delete_column :performance_tests, :uses_levels
    delete_column :performance_tests, :level1_max
    delete_column :performance_tests, :level2_max
    delete_column :performance_tests, :level3_max
  end
end
