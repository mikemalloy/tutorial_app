class CreatePerformanceTestResults < ActiveRecord::Migration
  def change
    create_table :performance_test_results do |t|
      t.integer :performance_test_id
      t.float :measure1max
      t.float :measure1min
      t.float :measure1avg
      t.text :measure1values
      t.float :measure2max
      t.float :measure2min
      t.float :measure2avg
      t.text :measure2values
      t.float :measure3max
      t.float :measure3min
      t.float :measure3avg
      t.text :measure3values
      t.float :measure4max
      t.float :measure4min
      t.float :measure4avg
      t.text :measure4values
      t.float :measure5max
      t.float :measure5min
      t.text :measure5values
      t.datetime :date_run

      t.timestamps
    end
  end
end
