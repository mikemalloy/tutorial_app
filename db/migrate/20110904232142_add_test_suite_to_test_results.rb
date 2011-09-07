class AddTestSuiteToTestResults < ActiveRecord::Migration
  def self.up
    add_column :test_results, :test_suite_id, :integer
  end

  def self.down
    remove_column :test_results, :test_suite_id
  end
end
