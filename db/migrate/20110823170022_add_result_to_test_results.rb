class AddResultToTestResults < ActiveRecord::Migration
  def self.up
    add_column :test_results, :result, :string
    add_column :test_results, :send_email, :boolean
  end

  def self.down
    remove_column :test_results, :result
    remove_column :test_results, :send_email
  end
end
