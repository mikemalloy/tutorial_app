class RemoveTypeFromTestResults < ActiveRecord::Migration
  def self.up
    remove_column :test_results, :test_type
  end

  def self.down
    add_column :test_results, :test_type, :string
  end
end
