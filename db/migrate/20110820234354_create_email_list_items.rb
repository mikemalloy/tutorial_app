class CreateEmailListItems < ActiveRecord::Migration
  def self.up
    create_table :email_list_items do |t|
      t.string :name
      t.string :email
      t.integer :email_list_id

      t.timestamps
    end
  end

  def self.down
    drop_table :email_list_items
  end
end
