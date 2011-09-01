class AddTypeToTestResults < ActiveRecord::Migration
  def self.up
    add_column :test_results, :type, :string
  end

  def self.down
    remove_column :test_results, :type
  end
end
