class AddProjectIdToEmailLists < ActiveRecord::Migration
  def self.up
    add_column :email_lists, :project_id, :integer
  end

  def self.down
    delete_column :email_lists, :project_id
  end
end
