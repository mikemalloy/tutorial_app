class CreateTestSuites < ActiveRecord::Migration
  def self.up
    create_table :test_suites do |t|
      t.integer :project_id
      t.string :name
      t.string :type
      t.integer :num_tests
      t.integer :num_automated
      t.integer :manual_time

      t.timestamps
    end
  end

  def self.down
    drop_table :test_suites
  end
end
