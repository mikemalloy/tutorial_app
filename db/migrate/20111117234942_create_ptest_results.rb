class CreatePtestResults < ActiveRecord::Migration
  def change
    create_table :ptest_results do |t|
      t.integer :ptest_id
      t.string :environment
      t.integer :device_id
      t.integer :operating_system_id
      t.integer :connection_id
      t.integer :browser_id
      t.text :values

      t.timestamps
    end
  end
end
