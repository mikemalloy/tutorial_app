class AddJiraAndDaToTestResults < ActiveRecord::Migration
  def self.up
     add_column :test_results, :jira_tickets, :string
     add_column :test_results, :da_results, :text
   end

   def self.down
     delete_column :test_results, :jira_tickets
     delete_column :test_resutls, :da_results
   end
end
