class ChangeDateFormatInTestResults < ActiveRecord::Migration
  def self.up
    change_column :test_results, :date_run, :datetime
  end

  def self.down
    change_column :test_results, :date_run, :date
  end
end
