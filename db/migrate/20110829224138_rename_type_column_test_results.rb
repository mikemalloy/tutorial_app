class RenameTypeColumnTestResults < ActiveRecord::Migration
  def self.up
    rename_column :test_results, :type, :test_type
  end

  def self.down
    rename_column :test_results, :test_type, :type
  end
end
