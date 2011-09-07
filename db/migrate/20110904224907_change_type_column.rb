class ChangeTypeColumn < ActiveRecord::Migration
  def self.up
    rename_column("test_suites", "type", "suite_type" )
  end

  def self.down
  end
end
