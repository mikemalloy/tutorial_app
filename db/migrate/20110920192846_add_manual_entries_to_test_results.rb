class AddManualEntriesToTestResults < ActiveRecord::Migration
  def self.up
     add_column :test_results, :manual_passed, :integer
     add_column :test_results, :manual_failed, :integer
     add_column :test_results, :manual_time_elapsed, :integer
   end

   def self.down
     delete_column :test_results, :manual_passed
     delete_column :test_results, :manual_failed
     delete_column :test_results, :manual_time_elapsed
   end
end
