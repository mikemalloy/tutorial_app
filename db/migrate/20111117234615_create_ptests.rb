class CreatePtests < ActiveRecord::Migration
  def change
    create_table :ptests do |t|
      t.string :name
      t.integer :project_id
      t.integer :metric_id

      t.timestamps
    end
  end
end
