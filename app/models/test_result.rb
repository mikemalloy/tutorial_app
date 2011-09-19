class Test_result < ActiveRecord::Base
  attr_accessible :date_run, :project_id, :server_rev, 
                  :client_rev, :number_tests, :number_passed, 
                  :number_failed, :actual_failed, :false_neg, 
                  :comments, :result, :send_email, 
                  :test_suite_id, :time_elapsed, :num_automated,
                  :jira_tickets, :da_results
  
  belongs_to :project
  belongs_to :test_suite
  
  validates :project_id, :presence => true
  validates :test_suite_id, :presence => true
  
  def self.search(search)
    if search
      id_array = []
      id_list = Project.where('name LIKE ?', "%#{search}%")
      id_list.each do |project|
        unless id_array.include?( project.id )
          id_array << project.id
        end
      end
      where( :project_id => id_array )
    else
      scoped
    end
  end

  
  
  # default_scope :order => 'test_results.created_at DESC'
end
