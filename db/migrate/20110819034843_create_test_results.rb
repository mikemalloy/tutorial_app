class CreateTestResults < ActiveRecord::Migration
  def self.up
    create_table :test_results do |t|
      t.date :date_run
      t.integer :project_id
      t.string :server_rev
      t.string :client_rev
      t.integer :number_tests
      t.integer :number_passed
      t.integer :number_failed
      t.integer :actual_failed
      t.integer :false_neg
      t.text :comments

      t.timestamps
    end
  end

  def self.down
    drop_table :test_results
  end
end
