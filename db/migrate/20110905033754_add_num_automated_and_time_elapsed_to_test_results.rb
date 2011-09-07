class AddNumAutomatedAndTimeElapsedToTestResults < ActiveRecord::Migration
  def self.up
    add_column :test_results, :num_automated, :integer
    add_column :test_results, :time_elapsed, :integer
  end

  def self.down
    remove_column :test_results, :num_automated
    remove_column :test_results, :time_elapsed
  end
end
