class CreatePerformanceTests < ActiveRecord::Migration
  def change
    create_table :performance_tests do |t|
      t.string :name
      t.string :measure1name
      t.string :measure2name
      t.string :measure3name
      t.string :measure4name
      t.string :measure5name
      t.integer :project_id

      t.timestamps
    end
  end
end
