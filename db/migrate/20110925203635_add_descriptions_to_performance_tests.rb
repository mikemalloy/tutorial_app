class AddDescriptionsToPerformanceTests < ActiveRecord::Migration
  def self.up
    add_column :performance_tests, :measure1desc, :text
    add_column :performance_tests, :measure2desc, :text
    add_column :performance_tests, :measure3desc, :text
    add_column :performance_tests, :measure4desc, :text
    add_column :performance_tests, :measure5desc, :text
  end
  
  def self.down
    delete_column :performance_tests, :measure1desc
    delete_column :performance_tests, :measure2desc
    delete_column :performance_tests, :measure3desc
    delete_column :performance_tests, :measure4desc
    delete_column :performance_tests, :measure5desc
  end
  
end
